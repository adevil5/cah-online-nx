/**
 * Shared types and models for NgRx SignalStore
 * These types mirror the database schema and DTOs from the backend
 */

// Enums from database
export type CardType = 'black' | 'white';
export type GameState = 'lobby' | 'in_progress' | 'completed';
export type RoundPhase = 'waiting_for_responses' | 'judging' | 'completed';

// Card models
export interface Card {
  cardId: string;
  text: string;
  type: CardType;
  pick?: number; // Only for black cards - number of white cards to play
  deckId: string;
  createdAt: string;
}

export interface BlackCard extends Card {
  type: 'black';
  pick: number;
}

export interface WhiteCard extends Card {
  type: 'white';
}

// Player models
export interface Player {
  userId: string;
  username: string;
  createdAt: string;
}

export interface PlayerSession {
  userId: string;
  gameId: string;
  username?: string;
  score?: number;
}

// Game models
export interface GameSession {
  gameId: string;
  gameCode: string;
  hostUserId: string;
  gameState: GameState;
  randoCardrissian: boolean;
  scoreLimit: number;
  createdAt: string;
}

export interface GameWithPlayers extends GameSession {
  players: PlayerSession[];
  isHost: boolean;
}

// Round models
export interface Round {
  roundId: string;
  gameId: string;
  roundNumber: number;
  roundPhase: RoundPhase;
  currentBlackCardId: string;
  czarUserId: string;
  winningResponseId: string | null;
  createdAt: string;
}

export interface RoundWithDetails extends Round {
  currentBlackCard: BlackCard;
  isCzar: boolean;
  responses: Response[];
  winningResponse: Response | null;
}

// Response models
export interface Response {
  responseId: string;
  roundId: string;
  userId: string;
  cards: WhiteCard[];
  createdAt: string;
}

// Game card (cards dealt to players)
export interface GameCard {
  gameCardId: string;
  gameId: string;
  cardId: string;
  userId: string | null;
  isPlayed: boolean;
  createdAt: string;
}

// Auth models
export interface AuthUser {
  userId: string;
  email: string;
}

export interface AuthSession {
  user: AuthUser;
  accessToken: string;
  refreshToken: string;
}

// DTOs for API requests
export interface LoginDto {
  email: string;
  password: string;
}

export interface RegistrationDto {
  email: string;
  password: string;
}

export interface CreateGameDto {
  randoCardrissian: boolean;
  scoreLimit: number;
}

export interface JoinGameDto {
  gameCode: string;
}

export interface StartGameDto {
  gameId: string;
}

// Store state interfaces
export interface AuthState {
  user: AuthUser | null;
  session: AuthSession | null;
  isAuthenticated: boolean;
  loading: boolean;
  error: string | null;
}

export interface PlayerState {
  currentPlayer: Player | null;
  loading: boolean;
  error: string | null;
}

export interface GameState {
  currentGame: GameWithPlayers | null;
  games: GameSession[];
  loading: boolean;
  error: string | null;
}

export interface RoundState {
  currentRound: RoundWithDetails | null;
  loading: boolean;
  error: string | null;
}

export interface CardState {
  playerHand: WhiteCard[];
  playedCards: WhiteCard[];
  loading: boolean;
  error: string | null;
}
