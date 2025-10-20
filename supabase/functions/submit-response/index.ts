import { createSupabaseClient } from '../_shared/supabase-client.ts';
import { successResponse, errorResponse, handleCors } from '../_shared/response-helpers.ts';

interface SubmitResponseRequest {
  roundId: string;
  cardIds: string[]; // Array of card IDs to play
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
    const body: SubmitResponseRequest = await req.json();
    const { roundId, cardIds } = body;

    if (!roundId || !cardIds || cardIds.length === 0) {
      return errorResponse('Round ID and card IDs are required', 400);
    }

    // Verify round exists and is in correct phase
    const { data: round, error: roundError } = await supabase
      .from('rounds')
      .select('*, game_sessions!inner(*)')
      .eq('round_id', roundId)
      .eq('round_phase', 'waiting_for_responses')
      .single();

    if (roundError || !round) {
      console.error('Error finding round:', roundError);
      return errorResponse('Round not found or not accepting responses', 404);
    }

    // Verify user is not the Card Czar
    if (round.czar_user_id === user.id) {
      return errorResponse('Card Czar cannot submit a response', 400);
    }

    // Verify user is in the game
    const { data: playerSession, error: playerSessionError } = await supabase
      .from('player_sessions')
      .select()
      .eq('game_id', round.game_id)
      .eq('user_id', user.id)
      .single();

    if (playerSessionError || !playerSession) {
      return errorResponse('You are not in this game', 403);
    }

    // Verify user owns all the cards they're trying to play
    const { data: gameCards, error: gameCardsError } = await supabase
      .from('game_cards')
      .select('game_card_id, card_id')
      .eq('game_id', round.game_id)
      .eq('user_id', user.id)
      .in('card_id', cardIds)
      .eq('is_played', false);

    if (gameCardsError || !gameCards || gameCards.length !== cardIds.length) {
      return errorResponse('Invalid cards or cards already played', 400);
    }

    // Check if user already submitted a response for this round
    const { data: existingResponse } = await supabase
      .from('responses')
      .select('response_id')
      .eq('round_id', roundId)
      .eq('user_id', user.id)
      .single();

    if (existingResponse) {
      return errorResponse('You have already submitted a response for this round', 400);
    }

    // Create response
    const { data: response, error: responseError } = await supabase
      .from('responses')
      .insert({
        round_id: roundId,
        user_id: user.id,
      })
      .select()
      .single();

    if (responseError || !response) {
      console.error('Error creating response:', responseError);
      return errorResponse(responseError?.message || 'Failed to create response', 400);
    }

    // Add cards to response
    const responseCards = cardIds.map((cardId, index) => ({
      response_id: response.response_id,
      response_order: index,
      card_id: cardId,
    }));

    const { error: responseCardsError } = await supabase
      .from('response_cards')
      .insert(responseCards);

    if (responseCardsError) {
      console.error('Error adding response cards:', responseCardsError);
      return errorResponse(responseCardsError.message, 400);
    }

    // Mark cards as played
    const { error: markPlayedError } = await supabase
      .from('game_cards')
      .update({ is_played: true })
      .in('game_card_id', gameCards.map((gc) => gc.game_card_id));

    if (markPlayedError) {
      console.error('Error marking cards as played:', markPlayedError);
    }

    // Check if all non-czar players have submitted
    const { data: allPlayers, error: allPlayersError } = await supabase
      .from('player_sessions')
      .select('user_id')
      .eq('game_id', round.game_id)
      .neq('user_id', round.czar_user_id);

    const { data: allResponses, error: allResponsesError } = await supabase
      .from('responses')
      .select('user_id')
      .eq('round_id', roundId);

    const allSubmitted = allPlayers && allResponses &&
      allPlayers.length === allResponses.length;

    // If all players submitted, move to judging phase
    if (allSubmitted) {
      await supabase
        .from('rounds')
        .update({ round_phase: 'judging' })
        .eq('round_id', roundId);
    }

    // Broadcast response submitted event
    const channel = supabase.channel(`game:${round.game_id}`);
    await channel.send({
      type: 'broadcast',
      event: 'response-submitted',
      payload: {
        roundId,
        userId: user.id,
        responseId: response.response_id,
        allSubmitted,
      },
    });

    return successResponse({
      responseId: response.response_id,
      roundId,
      cardIds,
      allSubmitted,
    });
  } catch (error) {
    console.error('Unexpected error:', error);
    return errorResponse(error instanceof Error ? error.message : 'Internal server error', 500);
  }
});
