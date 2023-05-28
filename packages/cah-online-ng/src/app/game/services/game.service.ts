import { Injectable } from '@angular/core';
import { createClient } from '@supabase/supabase-js';
import { environment } from '../../../environments/environment';
import { Database } from '../../../generated/supabase';
import { Card } from '../models/card.model';
import { CardPack } from '../models/card-pack.model';

@Injectable({
  providedIn: 'root',
})
export class GameService {
  private supabase = createClient<Database>(
    environment.supabaseUrl,
    environment.supabasePublicAnonKey
  );

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

  drawRandomWhiteCards(n: number) {
    return this.supabase
      .rpc('get_random_white_cards', { n })
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
}
