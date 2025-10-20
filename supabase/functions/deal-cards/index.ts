import { createServiceRoleClient } from '../_shared/supabase-client.ts';
import { successResponse, errorResponse, handleCors } from '../_shared/response-helpers.ts';

interface DealCardsRequest {
  gameId: string;
  userId?: string; // Optional: deal to specific user, otherwise deal to all players
  cardsPerPlayer?: number; // Optional: number of cards to deal (default 10)
}

Deno.serve(async (req) => {
  // Handle CORS preflight
  if (req.method === 'OPTIONS') {
    return handleCors();
  }

  try {
    // Use service role client for dealing cards (server-side operation)
    const supabase = createServiceRoleClient();

    // Parse request body
    const body: DealCardsRequest = await req.json();
    const { gameId, userId, cardsPerPlayer = 10 } = body;

    if (!gameId) {
      return errorResponse('Game ID is required', 400);
    }

    // Verify game exists
    const { data: gameSession, error: gameSessionError } = await supabase
      .from('game_sessions')
      .select()
      .eq('game_id', gameId)
      .single();

    if (gameSessionError || !gameSession) {
      console.error('Error finding game session:', gameSessionError);
      return errorResponse('Game not found', 404);
    }

    // Get players to deal cards to
    let playerIds: string[];
    if (userId) {
      playerIds = [userId];
    } else {
      const { data: players, error: playersError } = await supabase
        .from('player_sessions')
        .select('user_id')
        .eq('game_id', gameId);

      if (playersError || !players || players.length === 0) {
        return errorResponse('No players found in game', 400);
      }

      playerIds = players.map((p) => p.user_id);
    }

    // Get all available white cards
    const { data: whiteCards, error: whiteCardsError } = await supabase
      .from('cards')
      .select('card_id')
      .eq('type', 'white');

    if (whiteCardsError || !whiteCards || whiteCards.length === 0) {
      return errorResponse('No white cards available', 500);
    }

    // Shuffle cards
    const shuffledCards = [...whiteCards].sort(() => Math.random() - 0.5);

    // Deal cards to each player
    const dealtCards: { [userId: string]: string[] } = {};
    let cardIndex = 0;

    for (const playerId of playerIds) {
      // Check how many cards player currently has
      const { data: currentCards, error: currentCardsError } = await supabase
        .from('game_cards')
        .select('game_card_id')
        .eq('game_id', gameId)
        .eq('user_id', playerId)
        .eq('is_played', false);

      if (currentCardsError) {
        console.error('Error getting current cards:', currentCardsError);
        continue;
      }

      const currentCardCount = currentCards?.length || 0;
      const cardsNeeded = cardsPerPlayer - currentCardCount;

      if (cardsNeeded <= 0) {
        dealtCards[playerId] = [];
        continue;
      }

      // Deal new cards
      const newCards = [];
      for (let i = 0; i < cardsNeeded && cardIndex < shuffledCards.length; i++) {
        newCards.push({
          game_id: gameId,
          card_id: shuffledCards[cardIndex].card_id,
          user_id: playerId,
          is_played: false,
        });
        cardIndex++;
      }

      if (newCards.length > 0) {
        const { error: insertError } = await supabase
          .from('game_cards')
          .insert(newCards);

        if (insertError) {
          console.error('Error inserting cards:', insertError);
          continue;
        }

        dealtCards[playerId] = newCards.map((c) => c.card_id);
      }
    }

    // Broadcast cards dealt event via Realtime
    const channel = supabase.channel(`game:${gameId}`);
    await channel.send({
      type: 'broadcast',
      event: 'cards-dealt',
      payload: {
        gameId,
        playerCount: playerIds.length,
      },
    });

    return successResponse({
      gameId,
      dealtCards,
      totalCardsDealt: Object.values(dealtCards).reduce((sum, cards) => sum + cards.length, 0),
    });
  } catch (error) {
    console.error('Unexpected error:', error);
    return errorResponse(error instanceof Error ? error.message : 'Internal server error', 500);
  }
});
