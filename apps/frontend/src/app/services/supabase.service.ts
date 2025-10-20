import { Injectable } from '@angular/core';
import { createClient, SupabaseClient, User } from '@supabase/supabase-js';
import { environment } from '../../environments/environment';
import { BehaviorSubject, Observable } from 'rxjs';

export interface GameSession {
  gameId: string;
  gameCode: string;
  randoCardrissian: boolean;
  scoreLimit: number;
  isHost: boolean;
  gameState: 'lobby' | 'in_progress' | 'completed';
  createdAt: string;
}

export interface Card {
  cardId: string;
  text: string;
  type: 'black' | 'white';
  pick?: number;
}

export interface Round {
  roundId: string;
  roundNumber: number;
  czarUserId: string;
  blackCardId: string;
  roundPhase: 'waiting_for_responses' | 'judging' | 'completed';
}

@Injectable({
  providedIn: 'root',
})
export class SupabaseService {
  private supabase: SupabaseClient;
  private currentUserSubject = new BehaviorSubject<User | null>(null);
  public currentUser$: Observable<User | null> = this.currentUserSubject.asObservable();

  constructor() {
    this.supabase = createClient(
      environment.supabaseUrl,
      environment.supabaseAnonKey
    );

    // Listen to auth state changes
    this.supabase.auth.onAuthStateChange((event, session) => {
      this.currentUserSubject.next(session?.user ?? null);
    });

    // Initialize current user
    this.supabase.auth.getUser().then(({ data }) => {
      this.currentUserSubject.next(data.user);
    });
  }

  // ============================================================================
  // AUTH METHODS
  // ============================================================================

  async signUp(email: string, password: string, username: string) {
    const { data, error } = await this.supabase.auth.signUp({
      email,
      password,
    });

    if (error) throw error;

    // Create player profile
    if (data.user) {
      const { error: profileError } = await this.supabase
        .from('players')
        .insert({
          user_id: data.user.id,
          username,
        });

      if (profileError) throw profileError;
    }

    return data;
  }

  async signIn(email: string, password: string) {
    const { data, error } = await this.supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) throw error;
    return data;
  }

  async signOut() {
    const { error } = await this.supabase.auth.signOut();
    if (error) throw error;
  }

  async getCurrentUser(): Promise<User | null> {
    const { data } = await this.supabase.auth.getUser();
    return data.user;
  }

  getSession() {
    return this.supabase.auth.getSession();
  }

  // ============================================================================
  // EDGE FUNCTION CALLS
  // ============================================================================

  async createGame(randoCardrissian: boolean, scoreLimit: number): Promise<GameSession> {
    const { data, error } = await this.supabase.functions.invoke('create-game', {
      body: { randoCardrissian, scoreLimit },
    });

    if (error) throw error;
    return data;
  }

  async joinGame(gameCode: string): Promise<GameSession> {
    const { data, error } = await this.supabase.functions.invoke('join-game', {
      body: { gameCode },
    });

    if (error) throw error;
    return data;
  }

  async startGame(gameId: string): Promise<GameSession> {
    const { data, error } = await this.supabase.functions.invoke('start-game', {
      body: { gameId },
    });

    if (error) throw error;
    return data;
  }

  async dealCards(gameId: string, userId?: string, cardsPerPlayer?: number) {
    const { data, error } = await this.supabase.functions.invoke('deal-cards', {
      body: { gameId, userId, cardsPerPlayer },
    });

    if (error) throw error;
    return data;
  }

  async submitResponse(roundId: string, cardIds: string[]) {
    const { data, error } = await this.supabase.functions.invoke('submit-response', {
      body: { roundId, cardIds },
    });

    if (error) throw error;
    return data;
  }

  async judgeWinner(roundId: string, winningResponseId: string) {
    const { data, error } = await this.supabase.functions.invoke('judge-winner', {
      body: { roundId, winningResponseId },
    });

    if (error) throw error;
    return data;
  }

  // ============================================================================
  // DATABASE QUERIES (Direct)
  // ============================================================================

  async getPlayerHand(gameId: string, userId: string): Promise<Card[]> {
    const { data, error } = await this.supabase.rpc('get_player_hand', {
      p_game_id: gameId,
      p_user_id: userId,
    });

    if (error) throw error;
    return data || [];
  }

  async getGameState(gameId: string) {
    const { data, error } = await this.supabase.rpc('get_game_state', {
      p_game_id: gameId,
    });

    if (error) throw error;
    return data;
  }

  async getRoundResponses(roundId: string) {
    const { data, error } = await this.supabase.rpc('get_round_responses', {
      p_round_id: roundId,
    });

    if (error) throw error;
    return data || [];
  }

  async getPlayerScores(gameId: string) {
    const { data, error } = await this.supabase.rpc('get_player_scores', {
      p_game_id: gameId,
    });

    if (error) throw error;
    return data || [];
  }

  async canJoinGame(gameCode: string, userId: string): Promise<boolean> {
    const { data, error } = await this.supabase.rpc('can_join_game', {
      p_game_code: gameCode,
      p_user_id: userId,
    });

    if (error) throw error;
    return data || false;
  }

  // ============================================================================
  // DIRECT TABLE ACCESS (for simple queries)
  // ============================================================================

  async getGame(gameId: string) {
    const { data, error } = await this.supabase
      .from('game_sessions')
      .select('*')
      .eq('game_id', gameId)
      .single();

    if (error) throw error;
    return data;
  }

  async getPlayersInGame(gameId: string) {
    const { data, error } = await this.supabase
      .from('player_sessions')
      .select('user_id, players!inner(username)')
      .eq('game_id', gameId);

    if (error) throw error;
    return data || [];
  }

  async getCurrentRound(gameId: string) {
    const { data, error } = await this.supabase
      .from('rounds')
      .select('*')
      .eq('game_id', gameId)
      .neq('round_phase', 'completed')
      .order('round_number', { ascending: false })
      .limit(1)
      .single();

    if (error && error.code !== 'PGRST116') throw error; // PGRST116 = no rows
    return data;
  }

  async getBlackCard(cardId: string) {
    const { data, error } = await this.supabase
      .from('cards')
      .select('*')
      .eq('card_id', cardId)
      .single();

    if (error) throw error;
    return data;
  }

  // ============================================================================
  // REALTIME CHANNELS
  // ============================================================================

  createGameChannel(gameId: string) {
    return this.supabase.channel(`game:${gameId}`);
  }

  // Get the Supabase client for direct access if needed
  getClient(): SupabaseClient {
    return this.supabase;
  }
}
