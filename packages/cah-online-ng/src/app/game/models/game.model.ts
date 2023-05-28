export interface Game {
  id: string;
  gameDeckId: string;
  hostUserId: string;
  state: 'waiting' | 'inProgress' | 'completed';
  createdAt: Date;
  updatedAt: Date;
}
