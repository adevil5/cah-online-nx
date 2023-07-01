export interface Card {
  id: string;
  cardPackId: string | null;
  text: string;
  isWhiteCard: boolean;
  pickCount: number | null;
}
