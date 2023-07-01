export interface Game {
  id: string;
  gameDeckId: string;
  hostUserId: string;
  state:
    | 'waiting'
    | 'roundStarting'
    | 'roundPlaying'
    | 'roundCzarChoosing'
    | 'roundOver'
    | 'ended';
  currentRoundId: string | null;
  enableGhostPlayer: boolean;
  createdAt: Date;
  updatedAt: Date;
}
