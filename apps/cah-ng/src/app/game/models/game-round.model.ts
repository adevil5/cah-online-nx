import { Card } from './card.model';
import { GameProfile } from './profile.model';
import { UserGameRoundCardDisplay } from './user-game-round-card.model';

export interface GameRound {
  id: string;
  gameId: string;
  gameRoundNumber: number;
  blackCardId: string;
  czarUserId: string | null;
  winningUserGameId: string | null;
  createdAt: Date;
  updatedAt: Date;
}

export interface GameRoundDisplay {
  id: string;
  gameRoundNumber: number;
  blackCard: Card;
  czar: GameProfile;
  winningUserGameRoundCards: UserGameRoundCardDisplay[];
}
