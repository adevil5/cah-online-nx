import { createSupabaseClient } from '../_shared/supabase-client.ts';
import { successResponse, errorResponse, handleCors } from '../_shared/response-helpers.ts';

interface JudgeWinnerRequest {
  roundId: string;
  winningResponseId: string;
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
    const body: JudgeWinnerRequest = await req.json();
    const { roundId, winningResponseId } = body;

    if (!roundId || !winningResponseId) {
      return errorResponse('Round ID and winning response ID are required', 400);
    }

    // Verify round exists and is in judging phase
    const { data: round, error: roundError } = await supabase
      .from('rounds')
      .select('*, game_sessions!inner(*)')
      .eq('round_id', roundId)
      .eq('round_phase', 'judging')
      .single();

    if (roundError || !round) {
      console.error('Error finding round:', roundError);
      return errorResponse('Round not found or not in judging phase', 404);
    }

    // Verify user is the Card Czar
    if (round.czar_user_id !== user.id) {
      return errorResponse('Only the Card Czar can judge the winner', 403);
    }

    // Verify winning response exists and belongs to this round
    const { data: winningResponse, error: winningResponseError } = await supabase
      .from('responses')
      .select('user_id')
      .eq('response_id', winningResponseId)
      .eq('round_id', roundId)
      .single();

    if (winningResponseError || !winningResponse) {
      return errorResponse('Invalid winning response', 400);
    }

    // Update round with winning response
    const { error: updateRoundError } = await supabase
      .from('rounds')
      .update({
        winning_response_id: winningResponseId,
        round_phase: 'completed',
      })
      .eq('round_id', roundId);

    if (updateRoundError) {
      console.error('Error updating round:', updateRoundError);
      return errorResponse(updateRoundError.message, 400);
    }

    // Award point to winner (using player_sessions table - we'd need to add a score column)
    // For now, we'll just track wins via completed rounds with their user_id

    // Check if game should end
    const gameSession = round.game_sessions;
    const { data: allRounds, error: allRoundsError } = await supabase
      .from('rounds')
      .select('winning_response_id, responses!inner(user_id)')
      .eq('game_id', gameSession.game_id)
      .eq('round_phase', 'completed')
      .not('winning_response_id', 'is', null);

    // Count wins per player
    const winCounts: { [userId: string]: number } = {};
    if (allRounds) {
      for (const r of allRounds) {
        const winnerId = (r.responses as any).user_id;
        winCounts[winnerId] = (winCounts[winnerId] || 0) + 1;
      }
    }

    // Check if any player reached score limit
    const maxScore = Math.max(...Object.values(winCounts), 0);
    const gameEnded = gameSession.score_limit > 0 && maxScore >= gameSession.score_limit;

    if (gameEnded) {
      // End the game
      await supabase
        .from('game_sessions')
        .update({ game_state: 'completed' })
        .eq('game_id', gameSession.game_id);
    } else {
      // Start next round
      const { data: allPlayers, error: playersError } = await supabase
        .from('player_sessions')
        .select('user_id')
        .eq('game_id', gameSession.game_id);

      if (allPlayers && allPlayers.length > 0) {
        // Select next Card Czar (rotate)
        const currentCzarIndex = allPlayers.findIndex(p => p.user_id === round.czar_user_id);
        const nextCzarIndex = (currentCzarIndex + 1) % allPlayers.length;
        const nextCzarId = allPlayers[nextCzarIndex].user_id;

        // Get random black card for next round
        const { data: blackCards, error: blackCardsError } = await supabase
          .from('cards')
          .select('card_id')
          .eq('type', 'black')
          .limit(100);

        if (blackCards && blackCards.length > 0) {
          const randomBlackCard = blackCards[Math.floor(Math.random() * blackCards.length)];

          // Create next round
          const { data: nextRound, error: nextRoundError } = await supabase
            .from('rounds')
            .insert({
              game_id: gameSession.game_id,
              round_number: round.round_number + 1,
              czar_user_id: nextCzarId,
              current_black_card_id: randomBlackCard.card_id,
              round_phase: 'waiting_for_responses',
            })
            .select()
            .single();

          if (nextRound) {
            // Broadcast next round started
            const channel = supabase.channel(`game:${gameSession.game_id}`);
            await channel.send({
              type: 'broadcast',
              event: 'next-round-started',
              payload: {
                roundId: nextRound.round_id,
                roundNumber: nextRound.round_number,
                czarUserId: nextCzarId,
                blackCardId: randomBlackCard.card_id,
              },
            });
          }
        }
      }
    }

    // Broadcast winner selected event
    const channel = supabase.channel(`game:${gameSession.game_id}`);
    await channel.send({
      type: 'broadcast',
      event: 'winner-selected',
      payload: {
        roundId,
        winningResponseId,
        winnerId: winningResponse.user_id,
        gameEnded,
        scores: winCounts,
      },
    });

    return successResponse({
      roundId,
      winningResponseId,
      winnerId: winningResponse.user_id,
      gameEnded,
      scores: winCounts,
    });
  } catch (error) {
    console.error('Unexpected error:', error);
    return errorResponse(error instanceof Error ? error.message : 'Internal server error', 500);
  }
});
