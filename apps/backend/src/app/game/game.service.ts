import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateGameDto } from './dto/create-game.dto';

import { SupabaseService } from '../database/supabase.service';
import { GameSessionDto } from './dto/game-session.dto';

@Injectable()
export class GameService {
  constructor(private supabaseService: SupabaseService) {}

  async createGame(
    currentUserId: string,
    createGameDto: CreateGameDto
  ): Promise<GameSessionDto> {
    // const decks = await this.supabaseService
    //   .from('decks')
    //   .select('deck_id')
    //   .in('deck_id', createGameDto.deckIds);

    const newGameCode = await this.createUniqueGameCode();

    const { data: gameSession, error: gameSessionError } =
      await this.supabaseService
        .from('game_sessions')
        .insert({
          rando_cardrissian: createGameDto.randoCardrissian,
          game_code: newGameCode,
          host_user_id: currentUserId,
          score_limit: createGameDto.scoreLimit,
        })
        .select()
        .limit(1)
        .single();

    if (gameSessionError) {
      throw new HttpException(gameSessionError.message, HttpStatus.BAD_REQUEST);
    }

    const { error: playerSessionError } = await this.supabaseService
      .from('player_sessions')
      .insert({
        game_id: gameSession.game_id,
        user_id: currentUserId,
      });

    if (playerSessionError) {
      throw new HttpException(
        playerSessionError.message,
        HttpStatus.BAD_REQUEST
      );
    }

    return {
      gameCode: gameSession.game_code,
      randoCardrissian: gameSession.rando_cardrissian,
      scoreLimit: gameSession.score_limit,
      isHost: gameSession.host_user_id === currentUserId,
      gameState: gameSession.game_state,
      gameId: gameSession.game_id,
      createdAt: gameSession.created_at,
    };
  }

  async joinGame(
    currentUserId: string,
    joinGameDto: { gameCode: string }
  ): Promise<GameSessionDto> {
    const { data: gameSession, error: gameSessionError } =
      await this.supabaseService
        .from('game_sessions')
        .select()
        .eq('game_code', joinGameDto.gameCode)
        .neq('game_state', 'completed')
        .limit(1)
        .single();

    if (gameSessionError) {
      throw new HttpException(gameSessionError.message, HttpStatus.BAD_REQUEST);
    }

    if (!gameSession) {
      throw new HttpException('Game session not found', HttpStatus.NOT_FOUND);
    }

    const { error: playerSessionError } = await this.supabaseService
      .from('player_sessions')
      .insert({
        game_id: gameSession.game_id,
        user_id: currentUserId,
      });

    if (playerSessionError) {
      throw new HttpException(
        playerSessionError.message,
        HttpStatus.BAD_REQUEST
      );
    }

    return {
      gameCode: gameSession.game_code,
      randoCardrissian: gameSession.rando_cardrissian,
      scoreLimit: gameSession.score_limit,
      isHost: gameSession.host_user_id === currentUserId,
      gameState: gameSession.game_state,
      gameId: gameSession.game_id,
      createdAt: gameSession.created_at,
    };
  }

  async startGame(
    currentUserId: string,
    startGameDto: { gameId: string }
  ): Promise<GameSessionDto> {
    const { data: gameSession, error: gameSessionError } =
      await this.supabaseService
        .from('game_sessions')
        .select()
        .eq('game_id', startGameDto.gameId)
        .eq('host_user_id', currentUserId)
        .neq('game_state', 'completed')
        .limit(1)
        .single();

    if (gameSessionError) {
      throw new HttpException(gameSessionError.message, HttpStatus.BAD_REQUEST);
    }

    if (!gameSession) {
      throw new HttpException('Game session not found', HttpStatus.NOT_FOUND);
    }

    const { error: updateError } = await this.supabaseService
      .from('game_sessions')
      .update({
        game_state: 'in_progress',
      })
      .eq('game_id', startGameDto.gameId)
      .eq('host_user_id', currentUserId);

    if (updateError) {
      throw new HttpException(updateError.message, HttpStatus.BAD_REQUEST);
    }

    const { error: roundError } = await this.supabaseService
      .from('rounds')
      .insert({
        game_id: gameSession.game_id,
        round_number: 1,
        czar_user_id: currentUserId,
        current_black_card_id: 'asdf',
      });

    if (roundError) {
      throw new HttpException(roundError.message, HttpStatus.BAD_REQUEST);
    }

    return {
      gameCode: gameSession.game_code,
      randoCardrissian: gameSession.rando_cardrissian,
      scoreLimit: gameSession.score_limit,
      isHost: gameSession.host_user_id === currentUserId,
      gameState: 'in_progress',
      gameId: gameSession.game_id,
      createdAt: gameSession.created_at,
    };
  }

  private generateShortCode(length: number = 6): string {
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    let resultCode = '';
    for (let i = 0; i < length; i++) {
      resultCode += characters.charAt(
        Math.floor(Math.random() * characters.length)
      );
    }
    return resultCode;
  }

  private async createUniqueGameCode(): Promise<string> {
    let unique = false;
    let newCode = '';

    while (!unique) {
      newCode = this.generateShortCode();
      const existing = await this.supabaseService
        .from('game_sessions')
        .select('game_code')
        .eq('game_code', newCode)
        .neq('game_state', 'completed')
        .single();

      unique = !existing.data;
    }

    return newCode;
  }
}
