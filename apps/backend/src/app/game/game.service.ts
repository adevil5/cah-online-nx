import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateGameDto } from './dto/create-game.dto';
import { JoinGameDto } from './dto/join-game.dto';

import { Tables } from '@cah-online-nx/supabase';
import { SupabaseService } from '../database/supabase.service';

type SnakeToCamelCase<S extends string> =
  S extends `${infer T}_${infer U}${infer Rest}`
    ? `${T}${Capitalize<SnakeToCamelCase<`${U}${Rest}`>>}`
    : S;

type CamelCase<T> = {
  [K in keyof T as SnakeToCamelCase<K & string>]: T[K] extends object
    ? CamelCase<T[K]>
    : T[K];
};

type CamelToSnakeCase<S extends string> = S extends `${infer T}${infer Rest}`
  ? T extends Capitalize<T>
    ? `_${Lowercase<T>}${CamelToSnakeCase<Rest>}`
    : `${T}${CamelToSnakeCase<Rest>}`
  : S;

type SnakeCase<T> = {
  [K in keyof T as CamelToSnakeCase<K & string>]: T[K] extends object
    ? SnakeCase<T[K]>
    : T[K];
};

type GameSession = CamelCase<Tables<'game_sessions'>>;

@Injectable()
export class GameService {
  constructor(private supabaseService: SupabaseService) {}

  async createGame(
    createGameDto: CreateGameDto
  ): Promise<Tables<'game_sessions'>> {
    // Create game session logic

    //     "game_id" uuid not null default gen_random_uuid(),
    // "host_user_id" uuid not null,
    // "game_code" character varying(255) not null,
    // "is_active" boolean default true,
    // "rando_cardrissian" boolean default false,
    // "created_at" timestamp with time zone default CURRENT_TIMESTAMP

    // Create game session in database
    const { data, error } = await this.supabaseService
      .from('game_sessions')
      .insert({
        host_user_id: createGameDto.hostUserId,
        game_code: '1234',
        rando_cardrissian: createGameDto.randoCardrissian,
      })
      .single();

    if (error) {
      throw new HttpException(error.message, HttpStatus.BAD_REQUEST);
    }

    return data;
  }

  async joinGame(joinGameDto: JoinGameDto): Promise<Tables<'game_sessions'>> {
    // Join game session logic
  }

  // Additional game-related methods...
}
