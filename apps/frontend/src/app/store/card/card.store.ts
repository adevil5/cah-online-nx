import { computed, inject } from '@angular/core';
import { signalStore, withState, withComputed, withMethods, patchState } from '@ngrx/signals';
import { rxMethod } from '@ngrx/signals/rxjs-interop';
import { pipe, switchMap, tap } from 'rxjs';
import { tapResponse } from '@ngrx/operators';
import { HttpClient } from '@angular/common/http';
import type { WhiteCard } from '../models';

// Initial state
interface CardState {
  playerHand: WhiteCard[];
  playedCards: WhiteCard[];
  selectedCards: WhiteCard[];
  loading: boolean;
  error: string | null;
}

const initialState: CardState = {
  playerHand: [],
  playedCards: [],
  selectedCards: [],
  loading: false,
  error: null,
};

/**
 * CardStore - Manages player card state using NgRx SignalStore
 *
 * Features:
 * - Manage player hand (white cards)
 * - Track played cards
 * - Select cards for response
 * - Fetch new cards
 * - Real-time card updates
 *
 * Usage:
 * ```typescript
 * export class HandComponent {
 *   readonly cardStore = inject(CardStore);
 *
 *   ngOnInit() {
 *     this.cardStore.fetchHand('game-id');
 *   }
 *
 *   selectCard(card: WhiteCard) {
 *     this.cardStore.selectCard(card);
 *   }
 *
 *   submitCards() {
 *     const cards = this.cardStore.selectedCards();
 *     // Submit to round store
 *   }
 * }
 * ```
 */
export const CardStore = signalStore(
  { providedIn: 'root' },
  withState(initialState),
  withComputed((store) => ({
    // Computed values that automatically update when state changes
    handSize: computed(() => store.playerHand().length),
    hasCards: computed(() => store.playerHand().length > 0),
    selectedCount: computed(() => store.selectedCards().length),
    canSubmit: computed(() => store.selectedCards().length > 0),
    remainingCards: computed(() =>
      store.playerHand().filter(
        (card) => !store.selectedCards().some((selected) => selected.cardId === card.cardId)
      )
    ),
  })),
  withMethods((store, http = inject(HttpClient)) => ({
    /**
     * Fetch player's hand for a game
     */
    fetchHand: rxMethod<string>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap((gameId) =>
          http.get<WhiteCard[]>(`/api/game/${gameId}/hand`).pipe(
            tapResponse({
              next: (cards) => {
                patchState(store, {
                  playerHand: cards,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to fetch hand',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Draw new cards to replenish hand
     */
    drawCards: rxMethod<{ gameId: string; count: number }>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap(({ gameId, count }) =>
          http.post<WhiteCard[]>(`/api/game/${gameId}/draw`, { count }).pipe(
            tapResponse({
              next: (newCards) => {
                patchState(store, {
                  playerHand: [...store.playerHand(), ...newCards],
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to draw cards',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Select a card for playing
     */
    selectCard(card: WhiteCard) {
      const selectedCards = store.selectedCards();
      const isAlreadySelected = selectedCards.some((c) => c.cardId === card.cardId);

      if (isAlreadySelected) {
        // Deselect card
        patchState(store, {
          selectedCards: selectedCards.filter((c) => c.cardId !== card.cardId),
        });
      } else {
        // Select card
        patchState(store, {
          selectedCards: [...selectedCards, card],
        });
      }
    },

    /**
     * Clear all selected cards
     */
    clearSelection() {
      patchState(store, {
        selectedCards: [],
      });
    },

    /**
     * Play selected cards (submit response)
     * Moves cards from hand to played cards
     */
    playCards(cardIds: string[]) {
      const cardsToPlay = store.playerHand().filter((card) => cardIds.includes(card.cardId));

      patchState(store, {
        playerHand: store.playerHand().filter((card) => !cardIds.includes(card.cardId)),
        playedCards: [...store.playedCards(), ...cardsToPlay],
        selectedCards: [],
      });
    },

    /**
     * Add cards to hand (for real-time updates)
     */
    addCardsToHand(cards: WhiteCard[]) {
      patchState(store, {
        playerHand: [...store.playerHand(), ...cards],
      });
    },

    /**
     * Remove cards from hand (for real-time updates)
     */
    removeCardsFromHand(cardIds: string[]) {
      patchState(store, {
        playerHand: store.playerHand().filter((card) => !cardIds.includes(card.cardId)),
      });
    },

    /**
     * Set player hand directly (useful for initialization)
     */
    setHand(cards: WhiteCard[]) {
      patchState(store, {
        playerHand: cards,
        error: null,
      });
    },

    /**
     * Clear all card state (on game end or logout)
     */
    clearCards() {
      patchState(store, {
        playerHand: [],
        playedCards: [],
        selectedCards: [],
        error: null,
      });
    },

    /**
     * Clear card error
     */
    clearError() {
      patchState(store, { error: null });
    },
  }))
);
