import { Injectable, inject } from '@angular/core';
import { createClient } from '@supabase/supabase-js';
import { environment } from '../../../environments/environment';
import { Database } from '../../../generated/supabase';
import { Card } from '../models/card.model';
import { CardPack } from '../models/card-pack.model';
import { AuthService } from '../../auth/services/auth.service';
import { Game } from '../models/game.model';

@Injectable({
  providedIn: 'root',
})
export class GameDatabaseService {
  private supabase = createClient<Database>(
    environment.supabaseUrl,
    environment.supabasePublicAnonKey
  );

  private authService = inject(AuthService);

  getAllCardPacks() {
    return this.supabase.from('card_pack').select('*');
  }

  getCardPackByName(name: string) {
    return this.supabase
      .from('card_pack')
      .select('*')
      .eq('name', name)
      .single()
      .then(({ data, error }) => {
        if (error) {
          throw error;
        }
        const cardPack: CardPack = {
          id: data?.id ?? null,
          name: data?.name ?? null,
          isOfficial: data?.is_official ?? null,
        };
        return cardPack;
      });
  }

  drawRandomCards(n: number, is_white_card?: boolean) {
    return this.supabase
      .rpc('get_random_cards', { n, is_white_card })
      .then(({ data, error }) => {
        if (error) {
          throw error;
        }
        const cards: Card[] = [];
        for (const card of data ?? []) {
          cards.push({
            id: card.id,
            text: card.text,
            isWhiteCard: card.is_white_card,
            pickCount: card.pick_count,
            cardPackId: card.card_pack_id,
          });
        }
        return cards;
      });
  }

  createNewGame(gameDeckId: string) {
    if (this.authService.session) {
      const hostUserId = this.authService.session?.user.id;

      this.supabase
        .from('game')
        .insert({
          host_user_id: hostUserId,
          game_deck_id: gameDeckId,
          state: 'waiting',
        })
        .select()
        .single()
        .then(({ data, error }) => {
          if (error) {
            throw error;
          }
          const game: Game = {
            id: data.id,
            gameDeckId: data.game_deck_id,
            hostUserId: data.host_user_id,
            state: data.state as Game['state'],
            currentRoundId: data.current_round_id,
            enableGhostPlayer: data.enable_ghost_player,
            createdAt: new Date(data.created_at),
            updatedAt: new Date(data.updated_at),
          };
          return game;
        });
    }
  }
}
