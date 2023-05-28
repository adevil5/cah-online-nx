export interface GameDeck {
  id: string;
  gameId: string;
  cardId: string;
  cardLocation: string;
  cardOwnerId: string | null;
  createdAt: Date;
  updatedAt: Date;
}
