import { Card } from './card.model';

export interface UserGameRoundCard {
  userGameId: string;
  id: string;
  gameRoundId: string;
  playedCardId: string | null;
  playedCardOrder: number;
  createdAt: Date;
  updatedAt: Date;
}

export interface UserGameRoundCardDisplay {
  id: string;
  gameRoundId: string;
  playedCards: Card[];
}
