export class BlackCardDto {
  cardId: string;
  text: string;
  type: 'black';
  pick: number;
}

export class WhiteCardDto {
  cardId: string;
  text: string;
  type: 'white';
}
