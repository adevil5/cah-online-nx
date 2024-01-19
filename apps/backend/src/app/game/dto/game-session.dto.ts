// import { Tables } from '@cah-online-nx/supabase';
// import { CamelCase } from '@cah-online-nx/util-type-helpers';

// type GameSessionDto = CamelCase<Tables<'game_sessions'>>;

export class GameSessionDto {
  gameId: string;
  gameCode: string;
  isHost: boolean;
  randoCardrissian: boolean;
  gameState: 'lobby' | 'in_progress' | 'completed';
  scoreLimit: number;
  createdAt: string;
}
