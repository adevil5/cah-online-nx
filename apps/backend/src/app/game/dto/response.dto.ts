import { WhiteCardDto } from './card.dto';

export class ResponseDto {
  responseId: string;
  roundId: string;
  cards: WhiteCardDto[];
}
