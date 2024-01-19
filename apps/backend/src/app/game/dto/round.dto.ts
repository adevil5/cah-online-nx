import { BlackCardDto } from './card.dto';
import { ResponseDto } from './response.dto';

export class RoundDto {
  gameId: string;
  currentBlackCard: BlackCardDto;
  isCzar: boolean;
  roundNumber: number;
  winningResponse: ResponseDto | null;
  roundPhase: 'waiting_for_responses' | 'judging' | 'completed';
}
