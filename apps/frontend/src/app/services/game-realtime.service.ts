import { Injectable, OnDestroy } from '@angular/core';
import { RealtimeChannel } from '@supabase/supabase-js';
import { SupabaseService } from './supabase.service';
import { Subject } from 'rxjs';

export interface GameEvent {
  type: 'player-joined' | 'game-started' | 'cards-dealt' | 'response-submitted' | 'winner-selected' | 'next-round-started';
  payload: any;
}

@Injectable({
  providedIn: 'root',
})
export class GameRealtimeService implements OnDestroy {
  private channels: Map<string, RealtimeChannel> = new Map();
  private gameEvents$ = new Subject<GameEvent>();

  constructor(private supabaseService: SupabaseService) {}

  /**
   * Subscribe to all game events
   */
  getGameEvents() {
    return this.gameEvents$.asObservable();
  }

  /**
   * Set up realtime channel for a game
   */
  async setupGameChannel(gameId: string): Promise<void> {
    // If channel already exists, unsubscribe first
    if (this.channels.has(gameId)) {
      await this.unsubscribeFromGame(gameId);
    }

    const supabase = this.supabaseService.getClient();
    const channel = supabase.channel(`game:${gameId}`);

    // Listen for player joined event
    channel.on('broadcast', { event: 'player-joined' }, (payload) => {
      this.gameEvents$.next({
        type: 'player-joined',
        payload: payload.payload,
      });
    });

    // Listen for game started event
    channel.on('broadcast', { event: 'game-started' }, (payload) => {
      this.gameEvents$.next({
        type: 'game-started',
        payload: payload.payload,
      });
    });

    // Listen for cards dealt event
    channel.on('broadcast', { event: 'cards-dealt' }, (payload) => {
      this.gameEvents$.next({
        type: 'cards-dealt',
        payload: payload.payload,
      });
    });

    // Listen for response submitted event
    channel.on('broadcast', { event: 'response-submitted' }, (payload) => {
      this.gameEvents$.next({
        type: 'response-submitted',
        payload: payload.payload,
      });
    });

    // Listen for winner selected event
    channel.on('broadcast', { event: 'winner-selected' }, (payload) => {
      this.gameEvents$.next({
        type: 'winner-selected',
        payload: payload.payload,
      });
    });

    // Listen for next round started event
    channel.on('broadcast', { event: 'next-round-started' }, (payload) => {
      this.gameEvents$.next({
        type: 'next-round-started',
        payload: payload.payload,
      });
    });

    // Subscribe to the channel
    await channel.subscribe((status) => {
      if (status === 'SUBSCRIBED') {
        console.log(`Subscribed to game channel: ${gameId}`);
      } else if (status === 'CHANNEL_ERROR') {
        console.error(`Error subscribing to game channel: ${gameId}`);
      } else if (status === 'TIMED_OUT') {
        console.error(`Timed out subscribing to game channel: ${gameId}`);
      }
    });

    this.channels.set(gameId, channel);
  }

  /**
   * Unsubscribe from a game's realtime updates
   */
  async unsubscribeFromGame(gameId: string): Promise<void> {
    const channel = this.channels.get(gameId);
    if (channel) {
      await channel.unsubscribe();
      this.channels.delete(gameId);
      console.log(`Unsubscribed from game channel: ${gameId}`);
    }
  }

  /**
   * Unsubscribe from all channels
   */
  async unsubscribeAll(): Promise<void> {
    const promises = Array.from(this.channels.keys()).map((gameId) =>
      this.unsubscribeFromGame(gameId)
    );
    await Promise.all(promises);
  }

  /**
   * Send a broadcast message to a game channel
   */
  async broadcastToGame(gameId: string, event: string, payload: any): Promise<void> {
    const channel = this.channels.get(gameId);
    if (channel) {
      await channel.send({
        type: 'broadcast',
        event,
        payload,
      });
    } else {
      console.warn(`Cannot broadcast to game ${gameId}: channel not found`);
    }
  }

  /**
   * Listen to database changes on specific tables
   */
  setupTableListener(
    gameId: string,
    table: string,
    callback: (payload: any) => void
  ): void {
    const channel = this.channels.get(gameId);
    if (channel) {
      channel.on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table,
          filter: `game_id=eq.${gameId}`,
        },
        callback
      );
    }
  }

  ngOnDestroy(): void {
    this.unsubscribeAll();
    this.gameEvents$.complete();
  }
}
