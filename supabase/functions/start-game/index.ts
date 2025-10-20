import { createSupabaseClient } from '../_shared/supabase-client.ts';
import { successResponse, errorResponse, handleCors } from '../_shared/response-helpers.ts';

interface StartGameRequest {
  gameId: string;
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
    const body: StartGameRequest = await req.json();
    const { gameId } = body;

    if (!gameId) {
      return errorResponse('Game ID is required', 400);
    }

    // Verify game exists and user is the host
    const { data: gameSession, error: gameSessionError } = await supabase
      .from('game_sessions')
      .select()
      .eq('game_id', gameId)
      .eq('host_user_id', user.id)
      .neq('game_state', 'completed')
      .single();

    if (gameSessionError || !gameSession) {
      console.error('Error finding game session:', gameSessionError);
      return errorResponse('Game not found or you are not the host', 404);
    }

    // Get all players in the game to select Card Czar
    const { data: players, error: playersError } = await supabase
      .from('player_sessions')
      .select('user_id')
      .eq('game_id', gameId);

    if (playersError || !players || players.length === 0) {
      return errorResponse('No players found in game', 400);
    }

    // Select random player as Card Czar
    const czarUserId = players[Math.floor(Math.random() * players.length)].user_id;

    // Get a random black card for the first round
    const { data: blackCards, error: blackCardsError } = await supabase
      .from('cards')
      .select('card_id')
      .eq('type', 'black')
      .limit(100);

    if (blackCardsError || !blackCards || blackCards.length === 0) {
      return errorResponse('No black cards available', 500);
    }

    const randomBlackCard = blackCards[Math.floor(Math.random() * blackCards.length)];

    // Update game state to in_progress
    const { error: updateError } = await supabase
      .from('game_sessions')
      .update({
        game_state: 'in_progress',
      })
      .eq('game_id', gameId)
      .eq('host_user_id', user.id);

    if (updateError) {
      console.error('Error updating game state:', updateError);
      return errorResponse(updateError.message, 400);
    }

    // Create first round
    const { data: round, error: roundError } = await supabase
      .from('rounds')
      .insert({
        game_id: gameId,
        round_number: 1,
        czar_user_id: czarUserId,
        current_black_card_id: randomBlackCard.card_id,
        round_phase: 'waiting_for_responses',
      })
      .select()
      .single();

    if (roundError) {
      console.error('Error creating round:', roundError);
      return errorResponse(roundError.message, 400);
    }

    // Broadcast game started event via Realtime
    const channel = supabase.channel(`game:${gameId}`);
    await channel.send({
      type: 'broadcast',
      event: 'game-started',
      payload: {
        gameId,
        roundId: round.round_id,
        czarUserId,
        blackCardId: randomBlackCard.card_id,
      },
    });

    return successResponse({
      gameCode: gameSession.game_code,
      randoCardrissian: gameSession.rando_cardrissian,
      scoreLimit: gameSession.score_limit,
      isHost: gameSession.host_user_id === user.id,
      gameState: 'in_progress',
      gameId: gameSession.game_id,
      createdAt: gameSession.created_at,
      currentRound: {
        roundId: round.round_id,
        roundNumber: round.round_number,
        czarUserId,
        blackCardId: randomBlackCard.card_id,
      },
    });
  } catch (error) {
    console.error('Unexpected error:', error);
    return errorResponse(error instanceof Error ? error.message : 'Internal server error', 500);
  }
});
