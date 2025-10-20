import { createSupabaseClient } from '../_shared/supabase-client.ts';
import { successResponse, errorResponse, handleCors } from '../_shared/response-helpers.ts';

interface CreateGameRequest {
  randoCardrissian: boolean;
  scoreLimit: number;
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
    const body: CreateGameRequest = await req.json();
    const { randoCardrissian, scoreLimit } = body;

    // Generate unique game code
    const gameCode = await generateUniqueGameCode(supabase);

    // Create game session
    const { data: gameSession, error: gameSessionError } = await supabase
      .from('game_sessions')
      .insert({
        rando_cardrissian: randoCardrissian,
        game_code: gameCode,
        host_user_id: user.id,
        score_limit: scoreLimit,
      })
      .select()
      .single();

    if (gameSessionError) {
      console.error('Error creating game session:', gameSessionError);
      return errorResponse(gameSessionError.message, 400);
    }

    // Add host as first player
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

async function generateUniqueGameCode(supabase: any): Promise<string> {
  const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  let unique = false;
  let newCode = '';

  while (!unique) {
    // Generate 6-character code
    newCode = '';
    for (let i = 0; i < 6; i++) {
      newCode += characters.charAt(Math.floor(Math.random() * characters.length));
    }

    // Check if code already exists
    const { data } = await supabase
      .from('game_sessions')
      .select('game_code')
      .eq('game_code', newCode)
      .neq('game_state', 'completed')
      .single();

    unique = !data;
  }

  return newCode;
}
