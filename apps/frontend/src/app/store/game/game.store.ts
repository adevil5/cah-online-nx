import { computed, inject } from '@angular/core';
import { signalStore, withState, withComputed, withMethods, patchState } from '@ngrx/signals';
import { rxMethod } from '@ngrx/signals/rxjs-interop';
import { pipe, switchMap, tap, from } from 'rxjs';
import { tapResponse } from '@ngrx/operators';
import { SupabaseService } from '../../services/supabase.service';
import type { GameWithPlayers, GameSession, CreateGameDto, JoinGameDto, StartGameDto } from '../models';

// Initial state
interface GameState {
  currentGame: GameWithPlayers | null;
  games: GameSession[];
  loading: boolean;
  error: string | null;
}

const initialState: GameState = {
  currentGame: null,
  games: [],
  loading: false,
  error: null,
};

/**
 * GameStore - Manages game session state using NgRx SignalStore
 *
 * Features:
 * - Create new games
 * - Join games by code
 * - Start games (host only)
 * - Get game details
 * - Track current game state
 * - Real-time game updates (via subscriptions)
 *
 * Usage:
 * ```typescript
 * export class LobbyComponent {
 *   readonly gameStore = inject(GameStore);
 *
 *   createGame() {
 *     this.gameStore.createGame({
 *       randoCardrissian: false,
 *       scoreLimit: 7
 *     });
 *   }
 *
 *   joinGame(code: string) {
 *     this.gameStore.joinGame({ gameCode: code });
 *   }
 * }
 * ```
 */
export const GameStore = signalStore(
  { providedIn: 'root' },
  withState(initialState),
  withComputed((store) => ({
    // Computed values that automatically update when state changes
    hasActiveGame: computed(() => store.currentGame() !== null),
    gameId: computed(() => store.currentGame()?.gameId ?? null),
    gameCode: computed(() => store.currentGame()?.gameCode ?? null),
    isHost: computed(() => store.currentGame()?.isHost ?? false),
    gameState: computed(() => store.currentGame()?.gameState ?? null),
    players: computed(() => store.currentGame()?.players ?? []),
    playerCount: computed(() => store.currentGame()?.players?.length ?? 0),
    isInLobby: computed(() => store.currentGame()?.gameState === 'lobby'),
    isInProgress: computed(() => store.currentGame()?.gameState === 'in_progress'),
    isCompleted: computed(() => store.currentGame()?.gameState === 'completed'),
    randoCardrissian: computed(() => store.currentGame()?.randoCardrissian ?? false),
    scoreLimit: computed(() => store.currentGame()?.scoreLimit ?? 7),
  })),
  withMethods((store, supabaseService = inject(SupabaseService)) => ({
    /**
     * Create a new game
     */
    createGame: rxMethod<CreateGameDto>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap((dto) =>
          from(supabaseService.createGame(dto.randoCardrissian, dto.scoreLimit)).pipe(
            tapResponse({
              next: async (gameSession) => {
                // Fetch players for the game
                const players = await supabaseService.getPlayersInGame(gameSession.gameId);
                const game: GameWithPlayers = {
                  ...gameSession,
                  players: players.map((p: any) => ({
                    userId: p.user_id,
                    username: p.players.username,
                  })),
                };
                patchState(store, {
                  currentGame: game,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to create game',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Join an existing game by code
     */
    joinGame: rxMethod<JoinGameDto>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap((dto) =>
          from(supabaseService.joinGame(dto.gameCode)).pipe(
            tapResponse({
              next: async (gameSession) => {
                // Fetch players for the game
                const players = await supabaseService.getPlayersInGame(gameSession.gameId);
                const game: GameWithPlayers = {
                  ...gameSession,
                  players: players.map((p: any) => ({
                    userId: p.user_id,
                    username: p.players.username,
                  })),
                };
                patchState(store, {
                  currentGame: game,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to join game',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Start the game (host only)
     */
    startGame: rxMethod<StartGameDto>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap((dto) =>
          from(supabaseService.startGame(dto.gameId)).pipe(
            tapResponse({
              next: async (gameSession) => {
                // Fetch players for the game
                const players = await supabaseService.getPlayersInGame(gameSession.gameId);
                const game: GameWithPlayers = {
                  ...gameSession,
                  players: players.map((p: any) => ({
                    userId: p.user_id,
                    username: p.players.username,
                  })),
                };
                patchState(store, {
                  currentGame: game,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to start game',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Fetch game details by ID
     */
    fetchGame: rxMethod<string>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap((gameId) =>
          from(supabaseService.getGameState(gameId)).pipe(
            tapResponse({
              next: async (gameState: any) => {
                const players = await supabaseService.getPlayersInGame(gameId);
                const game: GameWithPlayers = {
                  gameId: gameState.game.game_id,
                  gameCode: gameState.game.game_code,
                  randoCardrissian: gameState.game.rando_cardrissian,
                  scoreLimit: gameState.game.score_limit,
                  isHost: false, // Will be determined by auth
                  gameState: gameState.game.game_state,
                  createdAt: gameState.game.created_at,
                  players: players.map((p: any) => ({
                    userId: p.user_id,
                    username: p.players.username,
                  })),
                };
                patchState(store, {
                  currentGame: game,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to fetch game',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Fetch list of games (for lobby list)
     * Note: This would require a new query or Edge Function in production
     */
    fetchGames: rxMethod<void>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap(() =>
          from(Promise.resolve([])).pipe(
            tapResponse({
              next: (games: GameSession[]) => {
                patchState(store, {
                  games,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Failed to fetch games',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Update current game state (for real-time updates)
     */
    updateGameState(game: GameWithPlayers) {
      patchState(store, {
        currentGame: game,
      });
    },

    /**
     * Leave the current game
     */
    leaveGame() {
      patchState(store, {
        currentGame: null,
        error: null,
      });
    },

    /**
     * Clear game error
     */
    clearError() {
      patchState(store, { error: null });
    },
  }))
);
