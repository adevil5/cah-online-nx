import { computed, inject } from '@angular/core';
import { signalStore, withState, withComputed, withMethods, patchState } from '@ngrx/signals';
import { rxMethod } from '@ngrx/signals/rxjs-interop';
import { pipe, switchMap, tap, catchError, of } from 'rxjs';
import { tapResponse } from '@ngrx/operators';
import { HttpClient } from '@angular/common/http';
import type { PlayerState, Player } from '../models';

// Initial state
const initialState: PlayerState = {
  currentPlayer: null,
  loading: false,
  error: null,
};

/**
 * PlayerStore - Manages player profile state using NgRx SignalStore
 *
 * Features:
 * - Player profile management
 * - Fetch current player details
 * - Update player information
 * - Loading and error states
 *
 * Usage:
 * ```typescript
 * export class ProfileComponent {
 *   readonly playerStore = inject(PlayerStore);
 *
 *   ngOnInit() {
 *     this.playerStore.fetchPlayer('user-id');
 *   }
 * }
 * ```
 */
export const PlayerStore = signalStore(
  { providedIn: 'root' },
  withState(initialState),
  withComputed((store) => ({
    // Computed values that automatically update when state changes
    hasPlayer: computed(() => store.currentPlayer() !== null),
    playerUsername: computed(() => store.currentPlayer()?.username ?? null),
    playerId: computed(() => store.currentPlayer()?.userId ?? null),
  })),
  withMethods((store, http = inject(HttpClient)) => ({
    /**
     * Fetch player details by user ID
     */
    fetchPlayer: rxMethod<string>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap((userId) =>
          http.get<Player>(`/api/players/${userId}`).pipe(
            tapResponse({
              next: (player) => {
                patchState(store, {
                  currentPlayer: player,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to fetch player',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Update player username
     */
    updateUsername: rxMethod<{ userId: string; username: string }>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap(({ userId, username }) =>
          http.patch<Player>(`/api/players/${userId}`, { username }).pipe(
            tapResponse({
              next: (player) => {
                patchState(store, {
                  currentPlayer: player,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to update username',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Set player state directly (useful for initialization)
     */
    setPlayer(player: Player | null) {
      patchState(store, {
        currentPlayer: player,
        error: null,
      });
    },

    /**
     * Clear player state (on logout)
     */
    clearPlayer() {
      patchState(store, {
        currentPlayer: null,
        error: null,
      });
    },

    /**
     * Clear any player errors
     */
    clearError() {
      patchState(store, { error: null });
    },
  }))
);
