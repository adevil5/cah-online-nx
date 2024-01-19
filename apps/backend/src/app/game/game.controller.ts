import { Body, Controller, Post, Request, UseGuards } from '@nestjs/common';
import { GameService } from './game.service';
import { CreateGameDto } from './dto/create-game.dto';
import { AuthGuard, AuthenticatedRequest } from '../auth/auth.guard';
import { JoinGameDto } from './dto/join-game.dto';
import { StartGameDto } from './dto/start-game.dto';

@Controller('game')
export class GameController {
  constructor(private gameService: GameService) {}

  @UseGuards(AuthGuard)
  @Post('create')
  async createGame(
    @Request() req: AuthenticatedRequest,
    @Body() createGameDto: CreateGameDto
  ) {
    const currentUserId = req.user.sub;
    return this.gameService.createGame(currentUserId, createGameDto);
  }

  @UseGuards(AuthGuard)
  @Post('join')
  async joinGame(
    @Request() req: AuthenticatedRequest,
    @Body() joinGameDto: JoinGameDto
  ) {
    const currentUserId = req.user.sub;
    return this.gameService.joinGame(currentUserId, joinGameDto);
  }

  @UseGuards(AuthGuard)
  @Post('start')
  async startGame(
    @Request() req: AuthenticatedRequest,
    @Body() startGameDto: StartGameDto
  ) {
    const currentUserId = req.user.sub;
    return this.gameService.startGame(currentUserId, startGameDto);
  }
}
