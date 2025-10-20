# Cards Against Humanity: Game Rules & Implementation Guide

Complete guide to the Cards Against Humanity game rules and how they're implemented in CAH Online.

---

## Table of Contents

1. [Game Overview](#game-overview)
2. [Official Rules](#official-rules)
3. [Game Setup](#game-setup)
4. [Gameplay Flow](#gameplay-flow)
5. [Winning the Game](#winning-the-game)
6. [House Rules & Variants](#house-rules--variants)
7. [Implementation Details](#implementation-details)
8. [Database Schema](#database-schema)
9. [Game State Machine](#game-state-machine)
10. [Special Cards](#special-cards)

---

## Game Overview

**Cards Against Humanity** is a party game where players compete to create the funniest, most outrageous, or most absurd combinations of phrases.

### Game Components

- **Black Cards**: Cards with prompts or fill-in-the-blank statements
- **White Cards**: Cards with words or phrases used to answer the prompts
- **Players**: 3-10 players (ideally 4-8)
- **Card Czar**: Rotating judge role

### Objective

Win the most rounds by playing the funniest white card(s) to match the black card prompt. First player to reach the score limit wins.

---

## Official Rules

### Setup

1. **Deal Cards**: Each player draws 10 white cards
2. **Choose First Czar**: Pick a starting Card Czar (random or youngest player)
3. **Set Score Limit**: Decide winning score (usually 5-10 points)

### Round Structure

#### Phase 1: Card Czar Draws Black Card

1. Card Czar draws the top black card
2. Black card is revealed to all players
3. Card Czar reads the card aloud

#### Phase 2: Players Submit Responses

1. All players (except Card Czar) select white card(s) from their hand
   - Most black cards require 1 white card
   - Some black cards have "Pick 2" or "Pick 3" prompts
2. Players submit cards face-down
3. Players draw back up to 10 cards after submitting

#### Phase 3: Card Czar Judges

1. Card Czar shuffles submitted cards
2. Card Czar reads each combination aloud
3. Card Czar picks the funniest response
4. Winner gets 1 Awesome Point (keeps the black card as trophy)

#### Phase 4: Next Round

1. Card Czar role passes to next player (clockwise)
2. Repeat phases 1-3

### Winning

First player to reach the score limit wins the game.

---

## Game Setup

### Minimum Requirements

- **3-10 players**
- **Deck of cards**:
  - ~100 black cards (prompts)
  - ~400 white cards (answers)
- **Score tracker**

### Creating a Game

1. **Host creates game**
   - Sets score limit (5-10 points)
   - Receives unique game code
   - Optionally enables house rules

2. **Players join**
   - Enter game code
   - Enter player name
   - Wait in lobby

3. **Host starts game**
   - Minimum 3 players required
   - Cards are shuffled and dealt
   - First Card Czar is randomly selected
   - First black card is drawn

---

## Gameplay Flow

### Lobby Phase

```
Host creates game
  ↓
Players join using game code
  ↓
Host clicks "Start Game"
  ↓
Game begins
```

### Round Flow

```
1. Card Czar draws black card
   ↓
2. Black card displayed to all
   ↓
3. Players select white card(s)
   ↓
4. Players submit responses
   ↓
5. All players submitted?
   ↓
6. Card Czar sees all responses (shuffled)
   ↓
7. Card Czar selects winner
   ↓
8. Winner announced, scores updated
   ↓
9. Next player becomes Card Czar
   ↓
10. Repeat from step 1
```

### Game End

```
Player reaches score limit
  ↓
Winner announced
  ↓
Game marked as completed
  ↓
Players can view final scores
```

---

## Winning the Game

### Standard Win Condition

**First player to reach score limit wins**

- Default: 5 Awesome Points
- Optional: 7 or 10 points for longer games

### Alternative Win Conditions

1. **Most Points After X Rounds**: Play set number of rounds, highest score wins
2. **Time Limit**: Play for set time (30 minutes), highest score wins
3. **Sudden Death**: First to 3 points in games with 8+ players

---

## House Rules & Variants

### Popular House Rules

#### 1. Rando Cardrissian

An AI player that plays random cards each round.

**How it works**:
- Rando draws 10 white cards
- Each round, Rando plays random card(s)
- If Rando wins, the black card is removed from the game
- Rando often wins, which is hilarious

**Implementation**:
```typescript
// In game settings
{
  enableRando: true
}

// Each round, auto-submit random cards for Rando
```

#### 2. Reboot the Universe

When you play a black card with "Pick 2" or "Pick 3", everyone draws enough cards to have 10 again BEFORE playing.

**Effect**: More card variety per round

#### 3. Packing Heat

For "Pick 2" rounds, players may play a third card for extra impact.

**Effect**: More creative combinations

#### 4. Rebooting the Universe (Alternate)

At any time, players may discard their entire hand and draw 10 new cards. Costs 1 Awesome Point.

**Effect**: Escape bad hands

#### 5. Happy Ending

After the Card Czar picks a winner, all other players select their favorite among the losing cards. Player with most votes gets 1 Awesome Point.

**Effect**: More points awarded per round

#### 6. Never Have I Ever

Play a white card from your hand and read it aloud. Anyone who has done what's on the card gains 1 Awesome Point.

**Effect**: Personal stories and laughter

#### 7. God Is Dead

Play without a Card Czar. All players submit cards, then everyone votes for their favorite. Card with most votes wins. Tie = no winner that round.

**Effect**: Democratic judging, no waiting

### Custom Variants

#### Speed CAH
- 30-second timer for submissions
- Fast-paced gameplay

#### Team CAH
- Play in teams of 2
- Partners discuss and play together
- First team to X points wins

#### Tournament Mode
- Multiple games
- Track wins across games
- Leaderboard for all players

---

## Implementation Details

### Player Roles

#### Host
- Creates game
- Sets rules/limits
- Can start game
- Can kick players (optional)
- Is a normal player once game starts

#### Card Czar
- Rotates each round
- Draws black card
- Judges responses
- Cannot submit white cards
- Selects winner

#### Regular Players
- Draw and hold 10 white cards
- Submit card(s) each round
- Wait for Card Czar's decision
- Become Card Czar in rotation

### Turn Order

```typescript
// Round 1: Player A is czar
// Round 2: Player B is czar (next in join order)
// Round 3: Player C is czar
// ...and so on

// Implementation:
const players = ['A', 'B', 'C', 'D'];
const czarIndex = roundNumber % players.length;
const currentCzar = players[czarIndex];
```

### Card Distribution

#### Initial Deal
- Each player: 10 white cards
- Cards drawn from shuffled deck

#### Replenishing Hand
- After submitting response, immediately draw back to 10
- Prevents players from seeing what others play based on card draws

#### Deck Management
- Shuffle white cards at start
- When deck runs out, reshuffle discard pile
- Black cards: shuffle at start, reshuffle when exhausted

---

## Database Schema

### Core Tables

#### `game_sessions`
```sql
CREATE TABLE game_sessions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  code VARCHAR(6) UNIQUE NOT NULL,  -- e.g., "ABC123"
  host_id UUID REFERENCES players(id),
  state game_state_enum NOT NULL,   -- lobby, in_progress, completed
  score_limit INTEGER DEFAULT 5,
  enable_rando BOOLEAN DEFAULT false,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `rounds`
```sql
CREATE TABLE rounds (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  game_session_id UUID REFERENCES game_sessions(id),
  round_number INTEGER NOT NULL,
  black_card_id UUID REFERENCES cards(id),
  card_czar_id UUID REFERENCES player_sessions(id),
  phase round_phase_enum NOT NULL,  -- waiting_for_responses, judging, completed
  winner_response_id UUID REFERENCES responses(id),
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `player_sessions`
```sql
CREATE TABLE player_sessions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  game_session_id UUID REFERENCES game_sessions(id),
  player_id UUID REFERENCES players(id),
  score INTEGER DEFAULT 0,
  is_active BOOLEAN DEFAULT true,
  joined_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `responses`
```sql
CREATE TABLE responses (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  round_id UUID REFERENCES rounds(id),
  player_session_id UUID REFERENCES player_sessions(id),
  submitted_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `response_cards`
```sql
CREATE TABLE response_cards (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  player_session_id UUID REFERENCES player_sessions(id),
  card_id UUID REFERENCES cards(id),
  response_id UUID REFERENCES responses(id),  -- NULL if in hand
  position INTEGER,  -- For Pick 2/3 ordering
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `cards`
```sql
CREATE TABLE cards (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  text TEXT NOT NULL,
  type card_type_enum NOT NULL,  -- black, white
  pick INTEGER DEFAULT 1,  -- For black cards: how many to pick
  deck_id UUID REFERENCES decks(id)
);
```

---

## Game State Machine

### Game States

```
lobby → in_progress → completed
```

#### `lobby`
- Players can join
- Host can configure settings
- Host can start game
- No rounds exist yet

#### `in_progress`
- Game is active
- Players cannot join (optional: allow mid-game joins)
- Rounds are being played
- Scores are tracked

#### `completed`
- Winner has been determined
- No more rounds
- Players can view final scores
- Game is archived

### Round Phases

```
waiting_for_responses → judging → completed
```

#### `waiting_for_responses`
- Black card is visible
- Players (except czar) submit white cards
- Waiting for all submissions

#### `judging`
- All responses submitted
- Card Czar reviews responses
- Responses are shuffled (anonymous)
- Card Czar selects winner

#### `completed`
- Winner selected
- Scores updated
- Winner announcement shown
- Ready for next round

---

## Special Cards

### Black Card Types

#### Standard (Pick 1)
```
"Why can't I sleep at night?"
```
Players submit 1 white card.

#### Pick 2
```
"_ + _ = _"
"When I am a billionaire, I will build a statue of _ on top of _."
```
Players submit 2 white cards in specific order.

#### Pick 3
```
"Step 1: _. Step 2: _. Step 3: Profit."
```
Players submit 3 white cards in order.

### White Card Examples

```
"Bees?"
"A windmill full of corpses"
"The Big Bang"
"Dead parents"
"Puppies!"
"Explosive diarrhea"
```

### Blank Cards (Optional)

Some editions include blank cards for custom entries.

**Implementation**:
- Allow players to write custom text
- Stored as regular white cards
- Flagged as user-generated

---

## Game Logic Implementation

### Starting a Round

```typescript
async function startRound(gameId: string, roundNumber: number) {
  // 1. Get next Card Czar
  const players = await getGamePlayers(gameId);
  const czarIndex = roundNumber % players.length;
  const czarId = players[czarIndex].id;

  // 2. Draw black card
  const blackCard = await drawBlackCard(gameId);

  // 3. Create round
  const round = await createRound({
    gameSessionId: gameId,
    roundNumber,
    blackCardId: blackCard.id,
    cardCzarId: czarId,
    phase: 'waiting_for_responses',
  });

  // 4. Notify players
  await broadcastToGame(gameId, 'round-started', {
    roundId: round.id,
    blackCard,
    czarId,
  });

  return round;
}
```

### Submitting Response

```typescript
async function submitResponse(
  roundId: string,
  playerId: string,
  cardIds: string[]
) {
  // 1. Validate player is not Card Czar
  const round = await getRound(roundId);
  if (round.cardCzarId === playerId) {
    throw new Error('Card Czar cannot submit response');
  }

  // 2. Validate correct number of cards
  const blackCard = await getCard(round.blackCardId);
  if (cardIds.length !== blackCard.pick) {
    throw new Error(`Must submit ${blackCard.pick} card(s)`);
  }

  // 3. Create response
  const response = await createResponse({
    roundId,
    playerSessionId: playerId,
  });

  // 4. Link cards to response
  for (let i = 0; i < cardIds.length; i++) {
    await linkCardToResponse(response.id, cardIds[i], i);
  }

  // 5. Draw replacement cards
  await drawCards(playerId, cardIds.length);

  // 6. Check if all players submitted
  const allSubmitted = await checkAllSubmitted(roundId);
  if (allSubmitted) {
    await updateRoundPhase(roundId, 'judging');
    await broadcastToGame(round.gameSessionId, 'all-submitted', {
      roundId,
    });
  }

  return response;
}
```

### Judging Winner

```typescript
async function judgeWinner(
  roundId: string,
  winningResponseId: string,
  czarId: string
) {
  // 1. Validate czar
  const round = await getRound(roundId);
  if (round.cardCzarId !== czarId) {
    throw new Error('Only Card Czar can judge');
  }

  // 2. Update round
  await updateRound(roundId, {
    winnerResponseId: winningResponseId,
    phase: 'completed',
  });

  // 3. Award point
  const winningResponse = await getResponse(winningResponseId);
  await incrementScore(winningResponse.playerSessionId, 1);

  // 4. Check for game winner
  const player = await getPlayerSession(winningResponse.playerSessionId);
  const game = await getGame(round.gameSessionId);

  if (player.score >= game.scoreLimit) {
    await endGame(game.id, player.id);
  } else {
    // Start next round
    await startRound(game.id, round.roundNumber + 1);
  }

  // 5. Broadcast result
  await broadcastToGame(game.id, 'round-winner', {
    roundId,
    winnerId: player.id,
    winningResponse: await getResponseWithCards(winningResponseId),
  });
}
```

---

## Realtime Events

### Event Types

| Event | When | Payload | Listeners |
|-------|------|---------|-----------|
| `player-joined` | Player joins lobby | `{ playerId, playerName }` | All players in game |
| `game-started` | Host starts game | `{ firstCzarId, firstBlackCard }` | All players |
| `round-started` | New round begins | `{ roundId, blackCard, czarId }` | All players |
| `card-submitted` | Player submits | `{ playerId }` | All players (no card details) |
| `all-submitted` | All players done | `{ responses }` | Card Czar only |
| `round-winner` | Czar picks winner | `{ winnerId, winningResponse, newScores }` | All players |
| `game-ended` | Winner determined | `{ winnerId, finalScores }` | All players |

### Implementation Example

```typescript
// Subscribe to game events
supabase
  .channel(`game:${gameId}`)
  .on('broadcast', { event: 'round-started' }, (payload) => {
    gameStore.startRound(payload.roundId, payload.blackCard, payload.czarId);
  })
  .on('broadcast', { event: 'card-submitted' }, (payload) => {
    gameStore.markPlayerSubmitted(payload.playerId);
  })
  .on('broadcast', { event: 'round-winner' }, (payload) => {
    gameStore.announceWinner(payload.winnerId, payload.winningResponse);
    gameStore.updateScores(payload.newScores);
  })
  .subscribe();
```

---

## UI/UX Considerations

### Card Display

- **Black Card**: Large, prominent, always visible during round
- **White Cards**: Grid layout, selectable, shows "Selected" state
- **Responses (for Czar)**: Shuffled, anonymous, easy to compare

### Player List

- Show all players
- Highlight current Card Czar
- Show scores
- Show who has submitted (checkmark icon)
- Show online status

### Turn Indicators

- Clear indication of whose turn it is
- Different UI for Card Czar vs regular players
- Timer (optional) for submissions

### Winner Announcement

- Celebrate winner with animation
- Show winning combination clearly
- Display updated scores
- Smooth transition to next round

---

## Accessibility

### Screen Reader Support

- Announce game state changes
- Read card text aloud option
- Navigate cards with keyboard

### Keyboard Navigation

- Tab through cards
- Space to select/deselect
- Enter to submit
- Arrow keys for card browsing

### Visual Accommodations

- High contrast mode
- Large text option
- Color-blind friendly indicators

---

## Content Moderation

### Official Decks

- Use official CAH cards (appropriately licensed)
- Mark NSFW content clearly
- Allow filtering by content rating

### Custom Cards

- Allow user-generated content (optional)
- Implement reporting system
- Review flagged cards
- Ban inappropriate users

---

## Performance Considerations

### Database Queries

- Index on `game_sessions.code` for fast joins
- Index on `rounds.game_session_id` for round lookups
- Use database functions for complex operations

### Realtime Optimization

- Throttle non-critical updates
- Batch card submissions
- Unsubscribe when leaving game

### Caching

- Cache card deck in memory
- Cache active game state
- Clear cache on game end

---

## Testing Scenarios

### Game Flow Tests

1. **Create and Join**
   - Host creates game
   - 3 players join
   - Host starts game
   - Verify all players receive cards

2. **Complete Round**
   - Black card displayed
   - All players submit
   - Czar judges
   - Winner receives point
   - Next round starts

3. **Win Game**
   - Play rounds until player reaches score limit
   - Verify game ends
   - Verify winner announcement

### Edge Cases

- Player disconnects mid-round
- Card Czar disconnects
- Host leaves game
- Empty card deck
- Simultaneous submissions
- Invalid responses

---

## Resources

### Official Rules

- [Cards Against Humanity Official Rules](https://www.cardsagainsthumanity.com/pages/how-to-play)

### Card Content

- Base game cards
- Expansion packs
- Custom card creators

### Similar Games

- Apples to Apples (family-friendly version)
- What Do You Meme?
- Joking Hazard

---

## Glossary

| Term | Definition |
|------|------------|
| **Black Card** | Prompt card with question or fill-in-the-blank |
| **White Card** | Answer card with word or phrase |
| **Card Czar** | Judge for current round, rotates each round |
| **Awesome Point** | 1 point awarded for winning a round |
| **Pick 2/3** | Black card requiring multiple white cards |
| **Rando Cardrissian** | AI player that plays random cards |
| **Game Code** | Unique 6-character code to join game |

---

**Last Updated**: 2025-10-20
**Version**: 1.0
**Based on**: Official Cards Against Humanity rules
