export interface GameRound {
  id: string;
  gameId: string;
  gameRoundNumber: number;
  blackCardId: string;
  czarUserId: string | null;
  winningCardId: string | null;
  winningUserId: string | null;
  createdAt: Date;
  updatedAt: Date;
}
