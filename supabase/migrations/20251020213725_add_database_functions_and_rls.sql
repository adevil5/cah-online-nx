-- Database Functions and Row Level Security (RLS) Policies
-- Phase 3: Move Backend Logic to Supabase

-- ============================================================================
-- DATABASE HELPER FUNCTIONS
-- ============================================================================

-- Function: Get player's hand (cards they can play)
CREATE OR REPLACE FUNCTION get_player_hand(p_game_id UUID, p_user_id UUID)
RETURNS TABLE (
  card_id UUID,
  text TEXT,
  deck_id UUID
) AS $$
BEGIN
  RETURN QUERY
  SELECT c.card_id, c.text, c.deck_id
  FROM cards c
  INNER JOIN game_cards gc ON gc.card_id = c.card_id
  WHERE gc.game_id = p_game_id
    AND gc.user_id = p_user_id
    AND gc.is_played = false
  ORDER BY gc.created_at;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function: Get current game state with all necessary info
CREATE OR REPLACE FUNCTION get_game_state(p_game_id UUID)
RETURNS JSON AS $$
DECLARE
  result JSON;
BEGIN
  SELECT json_build_object(
    'game', (
      SELECT row_to_json(gs)
      FROM game_sessions gs
      WHERE gs.game_id = p_game_id
    ),
    'players', (
      SELECT json_agg(
        json_build_object(
          'userId', ps.user_id,
          'isHost', ps.user_id = gs.host_user_id
        )
      )
      FROM player_sessions ps
      INNER JOIN game_sessions gs ON gs.game_id = ps.game_id
      WHERE ps.game_id = p_game_id
    ),
    'currentRound', (
      SELECT row_to_json(r)
      FROM rounds r
      WHERE r.game_id = p_game_id
        AND r.round_phase != 'completed'
      ORDER BY r.round_number DESC
      LIMIT 1
    )
  ) INTO result;

  RETURN result;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function: Get all responses for a round (for Card Czar to judge)
CREATE OR REPLACE FUNCTION get_round_responses(p_round_id UUID)
RETURNS TABLE (
  response_id UUID,
  user_id UUID,
  cards JSON
) AS $$
BEGIN
  RETURN QUERY
  SELECT
    r.response_id,
    r.user_id,
    (
      SELECT json_agg(
        json_build_object(
          'cardId', c.card_id,
          'text', c.text,
          'order', rc.response_order
        ) ORDER BY rc.response_order
      )
      FROM response_cards rc
      INNER JOIN cards c ON c.card_id = rc.card_id
      WHERE rc.response_id = r.response_id
    ) as cards
  FROM responses r
  WHERE r.round_id = p_round_id
  ORDER BY r.created_at;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function: Get player scores for a game
CREATE OR REPLACE FUNCTION get_player_scores(p_game_id UUID)
RETURNS TABLE (
  user_id UUID,
  wins INTEGER
) AS $$
BEGIN
  RETURN QUERY
  SELECT
    resp.user_id,
    COUNT(*)::INTEGER as wins
  FROM rounds r
  INNER JOIN responses resp ON resp.response_id = r.winning_response_id
  WHERE r.game_id = p_game_id
    AND r.round_phase = 'completed'
  GROUP BY resp.user_id
  ORDER BY wins DESC;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function: Check if user can join game
CREATE OR REPLACE FUNCTION can_join_game(p_game_code TEXT, p_user_id UUID)
RETURNS BOOLEAN AS $$
DECLARE
  v_game_id UUID;
  v_game_state TEXT;
  v_already_joined BOOLEAN;
BEGIN
  -- Find game by code
  SELECT game_id, game_state INTO v_game_id, v_game_state
  FROM game_sessions
  WHERE game_code = p_game_code
    AND game_state != 'completed';

  -- Game doesn't exist or is completed
  IF v_game_id IS NULL THEN
    RETURN FALSE;
  END IF;

  -- Check if user already in game
  SELECT EXISTS(
    SELECT 1 FROM player_sessions
    WHERE game_id = v_game_id AND user_id = p_user_id
  ) INTO v_already_joined;

  -- Can join if not already joined and game is in lobby
  RETURN NOT v_already_joined OR v_game_state = 'lobby';
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- ============================================================================
-- TRIGGERS
-- ============================================================================

-- Trigger: Auto-update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Note: We don't have updated_at columns in current schema
-- If we add them later, we can apply triggers like:
-- CREATE TRIGGER update_game_sessions_updated_at
-- BEFORE UPDATE ON game_sessions
-- FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- ROW LEVEL SECURITY (RLS) POLICIES
-- ============================================================================

-- Enable RLS on all tables
ALTER TABLE game_sessions ENABLE ROW LEVEL SECURITY;
ALTER TABLE player_sessions ENABLE ROW LEVEL SECURITY;
ALTER TABLE rounds ENABLE ROW LEVEL SECURITY;
ALTER TABLE responses ENABLE ROW LEVEL SECURITY;
ALTER TABLE response_cards ENABLE ROW LEVEL SECURITY;
ALTER TABLE game_cards ENABLE ROW LEVEL SECURITY;
ALTER TABLE cards ENABLE ROW LEVEL SECURITY;
ALTER TABLE decks ENABLE ROW LEVEL SECURITY;
ALTER TABLE players ENABLE ROW LEVEL SECURITY;

-- ============================================================================
-- GAME SESSIONS POLICIES
-- ============================================================================

-- Players can view games they are in
CREATE POLICY "Players can view their games"
ON game_sessions FOR SELECT
USING (
  auth.uid() IN (
    SELECT user_id FROM player_sessions
    WHERE player_sessions.game_id = game_sessions.game_id
  )
);

-- Players can create games (handled by Edge Function)
CREATE POLICY "Authenticated users can create games"
ON game_sessions FOR INSERT
WITH CHECK (auth.uid() = host_user_id);

-- Only host can update game settings
CREATE POLICY "Host can update game"
ON game_sessions FOR UPDATE
USING (auth.uid() = host_user_id);

-- ============================================================================
-- PLAYER SESSIONS POLICIES
-- ============================================================================

-- Players can view other players in their games
CREATE POLICY "Players can view players in their games"
ON player_sessions FOR SELECT
USING (
  game_id IN (
    SELECT game_id FROM player_sessions
    WHERE user_id = auth.uid()
  )
);

-- Players can join games
CREATE POLICY "Players can join games"
ON player_sessions FOR INSERT
WITH CHECK (auth.uid() = user_id);

-- ============================================================================
-- ROUNDS POLICIES
-- ============================================================================

-- Players can view rounds in their games
CREATE POLICY "Players can view rounds in their games"
ON rounds FOR SELECT
USING (
  game_id IN (
    SELECT game_id FROM player_sessions
    WHERE user_id = auth.uid()
  )
);

-- Only system can create/update rounds (via Edge Functions with service role)
-- No INSERT/UPDATE policies for regular users

-- ============================================================================
-- RESPONSES POLICIES
-- ============================================================================

-- Players can view all responses in their games
CREATE POLICY "Players can view responses in their games"
ON responses FOR SELECT
USING (
  round_id IN (
    SELECT round_id FROM rounds
    WHERE game_id IN (
      SELECT game_id FROM player_sessions
      WHERE user_id = auth.uid()
    )
  )
);

-- Players can create their own responses
CREATE POLICY "Players can create their own responses"
ON responses FOR INSERT
WITH CHECK (auth.uid() = user_id);

-- ============================================================================
-- RESPONSE CARDS POLICIES
-- ============================================================================

-- Players can view response cards in their games
CREATE POLICY "Players can view response cards in their games"
ON response_cards FOR SELECT
USING (
  response_id IN (
    SELECT response_id FROM responses
    WHERE round_id IN (
      SELECT round_id FROM rounds
      WHERE game_id IN (
        SELECT game_id FROM player_sessions
        WHERE user_id = auth.uid()
      )
    )
  )
);

-- Players can add cards to their responses
CREATE POLICY "Players can add cards to their responses"
ON response_cards FOR INSERT
WITH CHECK (
  response_id IN (
    SELECT response_id FROM responses
    WHERE user_id = auth.uid()
  )
);

-- ============================================================================
-- GAME CARDS POLICIES
-- ============================================================================

-- Players can only view their own cards
CREATE POLICY "Players can view their own cards"
ON game_cards FOR SELECT
USING (auth.uid() = user_id);

-- Only system can deal cards (via Edge Functions with service role)
-- No INSERT policy for regular users

-- Players can update their own cards (mark as played)
CREATE POLICY "Players can update their own cards"
ON game_cards FOR UPDATE
USING (auth.uid() = user_id);

-- ============================================================================
-- CARDS POLICIES
-- ============================================================================

-- All authenticated users can view cards
CREATE POLICY "Authenticated users can view cards"
ON cards FOR SELECT
TO authenticated
USING (true);

-- Anonymous users can also view cards (for public game browsing)
CREATE POLICY "Anonymous users can view cards"
ON cards FOR SELECT
TO anon
USING (true);

-- ============================================================================
-- DECKS POLICIES
-- ============================================================================

-- All authenticated users can view decks
CREATE POLICY "Authenticated users can view decks"
ON decks FOR SELECT
TO authenticated
USING (true);

-- Anonymous users can view decks
CREATE POLICY "Anonymous users can view decks"
ON decks FOR SELECT
TO anon
USING (true);

-- ============================================================================
-- PLAYERS POLICIES
-- ============================================================================

-- Players can view their own profile
CREATE POLICY "Players can view their own profile"
ON players FOR SELECT
USING (auth.uid() = user_id);

-- Players can view other players in their games
CREATE POLICY "Players can view other players in games"
ON players FOR SELECT
USING (
  user_id IN (
    SELECT ps2.user_id FROM player_sessions ps1
    INNER JOIN player_sessions ps2 ON ps2.game_id = ps1.game_id
    WHERE ps1.user_id = auth.uid()
  )
);

-- Players can insert their own profile
CREATE POLICY "Players can create their own profile"
ON players FOR INSERT
WITH CHECK (auth.uid() = user_id);

-- Players can update their own profile
CREATE POLICY "Players can update their own profile"
ON players FOR UPDATE
USING (auth.uid() = user_id);

-- ============================================================================
-- GRANT EXECUTE PERMISSIONS ON FUNCTIONS
-- ============================================================================

GRANT EXECUTE ON FUNCTION get_player_hand(UUID, UUID) TO authenticated;
GRANT EXECUTE ON FUNCTION get_game_state(UUID) TO authenticated;
GRANT EXECUTE ON FUNCTION get_round_responses(UUID) TO authenticated;
GRANT EXECUTE ON FUNCTION get_player_scores(UUID) TO authenticated;
GRANT EXECUTE ON FUNCTION can_join_game(TEXT, UUID) TO authenticated;

-- Grant to anon for public features if needed
GRANT EXECUTE ON FUNCTION can_join_game(TEXT, UUID) TO anon;

-- ============================================================================
-- INDEXES FOR PERFORMANCE
-- ============================================================================

-- Add indexes for common RLS queries
CREATE INDEX IF NOT EXISTS idx_player_sessions_user_game ON player_sessions(user_id, game_id);
CREATE INDEX IF NOT EXISTS idx_rounds_game_phase ON rounds(game_id, round_phase);
CREATE INDEX IF NOT EXISTS idx_responses_user ON responses(user_id);
CREATE INDEX IF NOT EXISTS idx_game_cards_user_played ON game_cards(user_id, is_played);

-- ============================================================================
-- COMMENTS
-- ============================================================================

COMMENT ON FUNCTION get_player_hand IS 'Returns all unplayed cards for a player in a specific game';
COMMENT ON FUNCTION get_game_state IS 'Returns complete game state including players and current round';
COMMENT ON FUNCTION get_round_responses IS 'Returns all responses for a round with their cards';
COMMENT ON FUNCTION get_player_scores IS 'Returns win counts for all players in a game';
COMMENT ON FUNCTION can_join_game IS 'Checks if a user can join a game by game code';
