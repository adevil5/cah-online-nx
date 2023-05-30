export interface GameCard {
  id: string;
  gameId: string;
  cardId: string;
  cardLocation: 'deck' | 'discard' | 'hand' | 'played';
  cardOwnerId: string | null;
  createdAt: Date;
  updatedAt: Date;
}
