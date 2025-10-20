import { createSupabaseClient } from '../_shared/supabase-client.ts';
import { successResponse, errorResponse, handleCors } from '../_shared/response-helpers.ts';

interface JoinGameRequest {
  gameCode: string;
}

Deno.serve(async (req) => {
  // Handle CORS preflight
  if (req.method === 'OPTIONS') {
    return handleCors();
  }

  try {
    // Get auth header and create client
    const authHeader = req.headers.get('Authorization')!;
    if (!authHeader) {
      return errorResponse('Missing authorization header', 401);
    }

    const supabase = createSupabaseClient(authHeader);

    // Verify user is authenticated
    const { data: { user }, error: authError } = await supabase.auth.getUser();
    if (authError || !user) {
      return errorResponse('Unauthorized', 401);
    }

    // Parse request body
    const body: JoinGameRequest = await req.json();
    const { gameCode } = body;

    if (!gameCode) {
      return errorResponse('Game code is required', 400);
    }

    // Find game session by code
    const { data: gameSession, error: gameSessionError } = await supabase
      .from('game_sessions')
      .select()
      .eq('game_code', gameCode)
      .neq('game_state', 'completed')
      .single();

    if (gameSessionError) {
      console.error('Error finding game session:', gameSessionError);
      return errorResponse('Game not found', 404);
    }

    if (!gameSession) {
      return errorResponse('Game not found', 404);
    }

    // Check if user is already in the game
    const { data: existingPlayer } = await supabase
      .from('player_sessions')
      .select()
      .eq('game_id', gameSession.game_id)
      .eq('user_id', user.id)
      .single();

    if (existingPlayer) {
      // User already in game, just return game info
      return successResponse({
        gameCode: gameSession.game_code,
        randoCardrissian: gameSession.rando_cardrissian,
        scoreLimit: gameSession.score_limit,
        isHost: gameSession.host_user_id === user.id,
        gameState: gameSession.game_state,
        gameId: gameSession.game_id,
        createdAt: gameSession.created_at,
      });
    }

    // Add player to game
    const { error: playerSessionError } = await supabase
      .from('player_sessions')
      .insert({
        game_id: gameSession.game_id,
        user_id: user.id,
      });

    if (playerSessionError) {
      console.error('Error adding player session:', playerSessionError);
      return errorResponse(playerSessionError.message, 400);
    }

    // Broadcast player joined event via Realtime
    const channel = supabase.channel(`game:${gameSession.game_id}`);
    await channel.send({
      type: 'broadcast',
      event: 'player-joined',
      payload: {
        userId: user.id,
        gameId: gameSession.game_id,
      },
    });

    return successResponse({
      gameCode: gameSession.game_code,
      randoCardrissian: gameSession.rando_cardrissian,
      scoreLimit: gameSession.score_limit,
      isHost: gameSession.host_user_id === user.id,
      gameState: gameSession.game_state,
      gameId: gameSession.game_id,
      createdAt: gameSession.created_at,
    });
  } catch (error) {
    console.error('Unexpected error:', error);
    return errorResponse(error instanceof Error ? error.message : 'Internal server error', 500);
  }
});
