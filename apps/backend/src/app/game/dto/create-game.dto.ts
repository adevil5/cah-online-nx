// import { TablesInsert } from '@cah-online-nx/supabase';
// import { CamelCase } from '@cah-online-nx/util-type-helpers';

// type CreateGameDto = CamelCase<TablesInsert<'game_sessions'>>;

export class CreateGameDto {
  randoCardrissian?: boolean;
  scoreLimit?: number;
  deckIds: string[];
}
