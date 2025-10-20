import { computed, inject } from '@angular/core';
import { signalStore, withState, withComputed, withMethods, patchState } from '@ngrx/signals';
import { rxMethod } from '@ngrx/signals/rxjs-interop';
import { pipe, switchMap, tap } from 'rxjs';
import { tapResponse } from '@ngrx/operators';
import { HttpClient } from '@angular/common/http';
import type { RoundWithDetails, Response, BlackCard } from '../models';

// Initial state
interface RoundState {
  currentRound: RoundWithDetails | null;
  loading: boolean;
  error: string | null;
}

const initialState: RoundState = {
  currentRound: null,
  loading: false,
  error: null,
};

/**
 * RoundStore - Manages game round state using NgRx SignalStore
 *
 * Features:
 * - Track current round
 * - Get round details
 * - Submit player responses
 * - Judge responses (Card Czar only)
 * - Real-time round updates
 *
 * Usage:
 * ```typescript
 * export class GameComponent {
 *   readonly roundStore = inject(RoundStore);
 *
 *   ngOnInit() {
 *     this.roundStore.fetchRound('game-id');
 *   }
 *
 *   submitResponse(cardIds: string[]) {
 *     this.roundStore.submitResponse({
 *       roundId: this.roundStore.roundId(),
 *       cardIds
 *     });
 *   }
 * }
 * ```
 */
export const RoundStore = signalStore(
  { providedIn: 'root' },
  withState(initialState),
  withComputed((store) => ({
    // Computed values that automatically update when state changes
    hasActiveRound: computed(() => store.currentRound() !== null),
    roundId: computed(() => store.currentRound()?.roundId ?? null),
    roundNumber: computed(() => store.currentRound()?.roundNumber ?? 0),
    roundPhase: computed(() => store.currentRound()?.roundPhase ?? null),
    currentBlackCard: computed(() => store.currentRound()?.currentBlackCard ?? null),
    blackCardText: computed(() => store.currentRound()?.currentBlackCard?.text ?? ''),
    blackCardPick: computed(() => store.currentRound()?.currentBlackCard?.pick ?? 1),
    isCzar: computed(() => store.currentRound()?.isCzar ?? false),
    czarUserId: computed(() => store.currentRound()?.czarUserId ?? null),
    responses: computed(() => store.currentRound()?.responses ?? []),
    responseCount: computed(() => store.currentRound()?.responses?.length ?? 0),
    winningResponse: computed(() => store.currentRound()?.winningResponse ?? null),
    isWaitingForResponses: computed(() => store.currentRound()?.roundPhase === 'waiting_for_responses'),
    isJudging: computed(() => store.currentRound()?.roundPhase === 'judging'),
    isCompleted: computed(() => store.currentRound()?.roundPhase === 'completed'),
  })),
  withMethods((store, http = inject(HttpClient)) => ({
    /**
     * Fetch current round for a game
     */
    fetchRound: rxMethod<string>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap((gameId) =>
          http.get<RoundWithDetails>(`/api/game/${gameId}/round`).pipe(
            tapResponse({
              next: (round) => {
                patchState(store, {
                  currentRound: round,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to fetch round',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Submit response for the current round
     */
    submitResponse: rxMethod<{ roundId: string; cardIds: string[] }>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap(({ roundId, cardIds }) =>
          http.post<Response>(`/api/round/${roundId}/response`, { cardIds }).pipe(
            tapResponse({
              next: (response) => {
                // Update round state to include the new response
                const currentRound = store.currentRound();
                if (currentRound) {
                  patchState(store, {
                    currentRound: {
                      ...currentRound,
                      responses: [...currentRound.responses, response],
                    },
                    loading: false,
                    error: null,
                  });
                }
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to submit response',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Judge a response (Card Czar only)
     */
    judgeResponse: rxMethod<{ roundId: string; responseId: string }>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap(({ roundId, responseId }) =>
          http.post<RoundWithDetails>(`/api/round/${roundId}/judge`, { responseId }).pipe(
            tapResponse({
              next: (round) => {
                patchState(store, {
                  currentRound: round,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to judge response',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Update round state (for real-time updates)
     */
    updateRound(round: RoundWithDetails) {
      patchState(store, {
        currentRound: round,
      });
    },

    /**
     * Update round phase (for real-time phase transitions)
     */
    updateRoundPhase(phase: 'waiting_for_responses' | 'judging' | 'completed') {
      const currentRound = store.currentRound();
      if (currentRound) {
        patchState(store, {
          currentRound: {
            ...currentRound,
            roundPhase: phase,
          },
        });
      }
    },

    /**
     * Add a response to the current round (for real-time updates)
     */
    addResponse(response: Response) {
      const currentRound = store.currentRound();
      if (currentRound) {
        patchState(store, {
          currentRound: {
            ...currentRound,
            responses: [...currentRound.responses, response],
          },
        });
      }
    },

    /**
     * Set winning response (for real-time updates)
     */
    setWinningResponse(response: Response) {
      const currentRound = store.currentRound();
      if (currentRound) {
        patchState(store, {
          currentRound: {
            ...currentRound,
            winningResponse: response,
            roundPhase: 'completed',
          },
        });
      }
    },

    /**
     * Clear round state (on game end)
     */
    clearRound() {
      patchState(store, {
        currentRound: null,
        error: null,
      });
    },

    /**
     * Clear round error
     */
    clearError() {
      patchState(store, { error: null });
    },
  }))
);
