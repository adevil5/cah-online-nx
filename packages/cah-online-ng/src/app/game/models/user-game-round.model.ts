export interface UserGameRound {
  id: string;
  userId: string;
  gameRoundId: string;
  playedCardId: string | null;
  createdAt: Date;
  updatedAt: Date;
}
