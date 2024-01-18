export class CreateGameDto {
  hostUserId: string;
  maxPlayers: number;
  scoreLimit: number;
  deckSelection: string[]; // Array of deck IDs
  randoCardrissian: boolean;
}
