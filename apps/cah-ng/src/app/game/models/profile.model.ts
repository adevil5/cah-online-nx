export interface Profile {
  updatedAt: Date | null;
  username: string | null;
  avatarUrl: string | null;
}

export interface GameProfile {
  userGameId: string;
  enableGhostMode: boolean;
  username: string | null;
  avatarUrl: string | null;
}
