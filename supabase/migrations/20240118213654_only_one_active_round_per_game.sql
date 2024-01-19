CREATE UNIQUE INDEX idx_unique_active_round_per_game ON rounds (game_id)
WHERE round_phase = 'waiting_for_responses' OR round_phase = 'judging';
