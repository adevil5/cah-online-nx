import { Controller } from '@nestjs/common';
import { GameService } from './game.service';

@Controller('game')
export class GameController {
  constructor(private gameService: GameService) {}

  @Post('create')
  async createGame(@Body() createGameDto: any) {
    return this.gameService.createGame(createGameDto);
  }

  @Post('join')
  async joinGame(@Body() joinGameDto: any) {
    return this.gameService.joinGame(joinGameDto);
  }

  // Additional game-related endpoints...
}
