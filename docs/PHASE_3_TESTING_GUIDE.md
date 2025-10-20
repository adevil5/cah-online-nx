# Phase 3 Testing Guide: Local Supabase Testing

This guide provides step-by-step instructions to test the Phase 3 migration with a local Supabase instance.

## Prerequisites

- Docker installed and running
- Node.js and npm installed
- Supabase CLI installed
- Two browser windows/tabs (for testing multiplayer)

## Step 1: Install Supabase CLI (if not installed)

```bash
# Install Supabase CLI
npm install -g supabase

# Verify installation
supabase --version
```

## Step 2: Start Local Supabase

```bash
# Navigate to project root
cd /path/to/cah-online-nx

# Start Supabase (this will download Docker images on first run)
supabase start

# This will output something like:
# API URL: http://localhost:54321
# GraphQL URL: http://localhost:54321/graphql/v1
# DB URL: postgresql://postgres:postgres@localhost:54322/postgres
# Studio URL: http://localhost:54323
# Inbucket URL: http://localhost:54324
# JWT secret: super-secret-jwt-token-with-at-least-32-characters-long
# anon key: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
# service_role key: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

**Important:** Keep this terminal window open. Note the `anon key` - it should match the one in `apps/frontend/src/environments/environment.ts`.

## Step 3: Apply Database Migrations

```bash
# In a new terminal, navigate to project root
cd /path/to/cah-online-nx

# Apply all migrations
supabase db reset

# This will:
# - Drop and recreate the database
# - Run all migration files in supabase/migrations/
# - Apply the RLS policies and database functions
```

**Verify migrations worked:**
```bash
# Open Supabase Studio
open http://localhost:54323

# Or visit in browser: http://localhost:54323
# Navigate to "Table Editor" - you should see:
# - cards, decks, game_sessions, player_sessions, players
# - rounds, responses, response_cards, game_cards
```

## Step 4: Seed Test Data (Optional but Recommended)

```bash
# Load seed data (cards and decks)
supabase db reset --seed

# This will populate the cards and decks tables with game data
```

**Verify seed data:**
- Open Supabase Studio (http://localhost:54323)
- Go to Table Editor → cards
- You should see white and black cards
- Go to Table Editor → decks
- You should see at least one deck

## Step 5: Deploy Edge Functions Locally

```bash
# Serve all Edge Functions locally
supabase functions serve

# This will start all functions on http://localhost:54321/functions/v1/
# You should see output like:
# - Serving create-game
# - Serving join-game
# - Serving start-game
# - Serving deal-cards
# - Serving submit-response
# - Serving judge-winner
```

**Keep this terminal window open.**

## Step 6: Start the Frontend Application

```bash
# In a new terminal, navigate to project root
cd /path/to/cah-online-nx

# Install dependencies if needed
npm install

# Serve the frontend
npx nx serve frontend

# Frontend should start at http://localhost:4200
```

**Wait for compilation to complete.** You should see:
```
✔ Browser application bundle generation complete.
** Angular Live Development Server is listening on localhost:4200 **
```

## Step 7: Test Authentication Flow

### 7.1 Test User Registration

1. **Open browser** to http://localhost:4200

2. **Navigate to Register/Sign Up** (if you have a register page)
   - If no UI exists yet, use browser console:
   ```javascript
   // Open browser DevTools (F12)
   // Go to Console tab

   // Register a test user
   const response = await fetch('http://localhost:54321/auth/v1/signup', {
     method: 'POST',
     headers: {
       'Content-Type': 'application/json',
       'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
     },
     body: JSON.stringify({
       email: 'player1@test.com',
       password: 'password123'
     })
   });
   const data = await response.json();
   console.log('User created:', data);
   ```

3. **Verify in Supabase Studio:**
   - Open http://localhost:54323
   - Go to Authentication → Users
   - You should see the new user

4. **Create a second test user** for multiplayer testing:
   ```javascript
   const response2 = await fetch('http://localhost:54321/auth/v1/signup', {
     method: 'POST',
     headers: {
       'Content-Type': 'application/json',
       'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
     },
     body: JSON.stringify({
       email: 'player2@test.com',
       password: 'password123'
     })
   });
   const data2 = await response2.json();
   console.log('User 2 created:', data2);
   ```

### 7.2 Test User Login

```javascript
// In browser console
const loginResponse = await fetch('http://localhost:54321/auth/v1/token?grant_type=password', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
  },
  body: JSON.stringify({
    email: 'player1@test.com',
    password: 'password123'
  })
});
const loginData = await loginResponse.json();
console.log('Login successful:', loginData);

// Save access token for later use
const accessToken = loginData.access_token;
```

**Expected result:** You should receive an `access_token` and `refresh_token`.

### 7.3 Test User Logout

```javascript
// In browser console
const logoutResponse = await fetch('http://localhost:54321/auth/v1/logout', {
  method: 'POST',
  headers: {
    'Authorization': `Bearer ${accessToken}`,
    'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
  }
});
console.log('Logout successful');
```

## Step 8: Test Game Creation and Joining

### 8.1 Test Create Game

1. **First, login as Player 1** (from Step 7.2)

2. **Call create-game Edge Function:**
   ```javascript
   // In browser console (using Player 1's token)
   const createGameResponse = await fetch('http://localhost:54321/functions/v1/create-game', {
     method: 'POST',
     headers: {
       'Content-Type': 'application/json',
       'Authorization': `Bearer ${accessToken}`,
       'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
     },
     body: JSON.stringify({
       randoCardrissian: false,
       scoreLimit: 7
     })
   });
   const gameData = await createGameResponse.json();
   console.log('Game created:', gameData);

   // Save game code for Player 2 to join
   const gameCode = gameData.gameCode;
   const gameId = gameData.gameId;
   ```

3. **Verify in Supabase Studio:**
   - Open http://localhost:54323
   - Go to Table Editor → game_sessions
   - You should see the new game with the generated game code
   - Go to Table Editor → player_sessions
   - You should see Player 1 in the game

**Expected result:**
```json
{
  "gameCode": "ABC123",
  "gameId": "uuid-here",
  "randoCardrissian": false,
  "scoreLimit": 7,
  "isHost": true,
  "gameState": "lobby",
  "createdAt": "2025-10-20T..."
}
```

### 8.2 Test Join Game

1. **Open a second browser window/tab** (incognito/private mode recommended)

2. **Login as Player 2:**
   ```javascript
   // In second browser console
   const login2Response = await fetch('http://localhost:54321/auth/v1/token?grant_type=password', {
     method: 'POST',
     headers: {
       'Content-Type': 'application/json',
       'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
     },
     body: JSON.stringify({
       email: 'player2@test.com',
       password: 'password123'
     })
   });
   const login2Data = await login2Response.json();
   const accessToken2 = login2Data.access_token;
   console.log('Player 2 logged in');
   ```

3. **Join the game using the game code from Player 1:**
   ```javascript
   // In second browser console
   const joinGameResponse = await fetch('http://localhost:54321/functions/v1/join-game', {
     method: 'POST',
     headers: {
       'Content-Type': 'application/json',
       'Authorization': `Bearer ${accessToken2}`,
       'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
     },
     body: JSON.stringify({
       gameCode: gameCode  // Use the code from Step 8.1
     })
   });
   const joinData = await joinGameResponse.json();
   console.log('Player 2 joined game:', joinData);
   ```

4. **Verify in Supabase Studio:**
   - Go to Table Editor → player_sessions
   - You should now see both Player 1 and Player 2 in the game

**Expected result:**
```json
{
  "gameCode": "ABC123",
  "gameId": "same-uuid",
  "isHost": false,
  "gameState": "lobby",
  ...
}
```

## Step 9: Test Real-time Updates

### 9.1 Set Up Real-time Listener (Player 1)

```javascript
// In Player 1's browser console
import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/+esm';

const supabase = createClient(
  'http://localhost:54321',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
);

const channel = supabase.channel(`game:${gameId}`);

channel
  .on('broadcast', { event: 'player-joined' }, (payload) => {
    console.log('Player joined:', payload);
  })
  .on('broadcast', { event: 'game-started' }, (payload) => {
    console.log('Game started:', payload);
  })
  .subscribe((status) => {
    console.log('Realtime status:', status);
  });
```

### 9.2 Trigger Real-time Event (Player 2 Joins)

This should have already happened in Step 8.2. Check Player 1's console - you should see:
```
Player joined: { userId: "player-2-uuid", gameId: "game-uuid" }
```

### 9.3 Test Game Start Event

1. **Start the game (Player 1 only - as host):**
   ```javascript
   // In Player 1's browser console
   const startGameResponse = await fetch('http://localhost:54321/functions/v1/start-game', {
     method: 'POST',
     headers: {
       'Content-Type': 'application/json',
       'Authorization': `Bearer ${accessToken}`,
       'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
     },
     body: JSON.stringify({
       gameId: gameId
     })
   });
   const startData = await startGameResponse.json();
   console.log('Game started:', startData);
   ```

2. **Check both Player 1 and Player 2 consoles:**
   - Both should receive the "game-started" event
   - You should see the current round details

**Expected result in both consoles:**
```
Game started: {
  gameId: "uuid",
  roundId: "uuid",
  czarUserId: "uuid",
  blackCardId: "uuid"
}
```

## Step 10: Test Deal Cards

```javascript
// In Player 1's console
const dealCardsResponse = await fetch('http://localhost:54321/functions/v1/deal-cards', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${accessToken}`,
    'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
  },
  body: JSON.stringify({
    gameId: gameId,
    cardsPerPlayer: 10
  })
});
const dealData = await dealCardsResponse.json();
console.log('Cards dealt:', dealData);
```

**Verify cards were dealt:**
- Open Supabase Studio
- Go to Table Editor → game_cards
- You should see 20 cards (10 for each player)
- Each card should have `is_played: false`

## Step 11: Test Submit Response

### 11.1 Get Player 1's Cards

```javascript
// In Player 1's console
const player1CardsResponse = await fetch('http://localhost:54321/rest/v1/rpc/get_player_hand', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${accessToken}`,
    'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0',
    'Prefer': 'params=single-object'
  },
  body: JSON.stringify({
    p_game_id: gameId,
    p_user_id: loginData.user.id
  })
});
const player1Cards = await player1CardsResponse.json();
console.log('Player 1 cards:', player1Cards);

// Pick first card
const selectedCard = player1Cards[0].card_id;
```

### 11.2 Get Current Round ID

```javascript
// In Player 1's console
const roundResponse = await fetch(`http://localhost:54321/rest/v1/rounds?game_id=eq.${gameId}&round_phase=neq.completed&select=*&order=round_number.desc&limit=1`, {
  headers: {
    'Authorization': `Bearer ${accessToken}`,
    'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
  }
});
const roundData = await roundResponse.json();
const currentRound = roundData[0];
console.log('Current round:', currentRound);
```

### 11.3 Submit Response (Non-Czar Player Only)

**Important:** Check if Player 1 is the Card Czar. If so, use Player 2 to submit.

```javascript
// Check who is Card Czar
console.log('Card Czar user_id:', currentRound.czar_user_id);
console.log('Player 1 user_id:', loginData.user.id);

// If Player 1 is NOT the Czar, submit response:
if (currentRound.czar_user_id !== loginData.user.id) {
  const submitResponse = await fetch('http://localhost:54321/functions/v1/submit-response', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${accessToken}`,
      'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
    },
    body: JSON.stringify({
      roundId: currentRound.round_id,
      cardIds: [selectedCard]
    })
  });
  const submitData = await submitResponse.json();
  console.log('Response submitted:', submitData);
} else {
  console.log('Player 1 is the Czar, cannot submit response');
}
```

**Expected realtime event:** Both players should see "response-submitted" event.

## Step 12: Test Judge Winner

### 12.1 Get All Responses (Czar Only)

```javascript
// In Czar's browser console
const responsesResponse = await fetch('http://localhost:54321/rest/v1/rpc/get_round_responses', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${accessToken}`, // Use Czar's token
    'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0',
    'Prefer': 'params=single-object'
  },
  body: JSON.stringify({
    p_round_id: currentRound.round_id
  })
});
const responses = await responsesResponse.json();
console.log('All responses:', responses);

// Pick first response as winner
const winningResponseId = responses[0].response_id;
```

### 12.2 Judge Winner

```javascript
// In Czar's browser console
const judgeResponse = await fetch('http://localhost:54321/functions/v1/judge-winner', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${accessToken}`, // Use Czar's token
    'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0'
  },
  body: JSON.stringify({
    roundId: currentRound.round_id,
    winningResponseId: winningResponseId
  })
});
const judgeData = await judgeResponse.json();
console.log('Winner judged:', judgeData);
```

**Expected realtime events:**
- "winner-selected" - Shows winner and scores
- "next-round-started" - New round created (if game not ended)

## Step 13: Verify Database State

After testing, verify everything in Supabase Studio:

1. **game_sessions table:**
   - Game state should be "in_progress" or "completed"

2. **player_sessions table:**
   - Both players should be present

3. **rounds table:**
   - Should have multiple rounds (if you judged winners)
   - Completed rounds should have winning_response_id

4. **responses table:**
   - Should have responses from non-Czar players

5. **game_cards table:**
   - Cards should be marked as is_played: true after being used

## Common Issues and Solutions

### Issue: Edge Functions not starting

**Solution:**
```bash
# Check Docker is running
docker ps

# Restart Supabase
supabase stop
supabase start

# Serve functions again
supabase functions serve
```

### Issue: "No cards found" error

**Solution:**
```bash
# Reset database and seed data
supabase db reset

# Check seed.sql file exists
ls -la supabase/seed.sql
```

### Issue: CORS errors in browser

**Solution:**
- Make sure Edge Functions are running (`supabase functions serve`)
- Check CORS headers in Edge Function code
- Use `http://localhost:4200` (not `127.0.0.1`)

### Issue: Real-time events not received

**Solution:**
```bash
# Check Supabase Realtime is enabled
# Open http://localhost:54323
# Go to Settings → API
# Ensure "Enable Realtime" is ON

# Or check config.toml
cat supabase/config.toml | grep -A 5 "\[realtime\]"
```

### Issue: Authentication fails

**Solution:**
```bash
# Check JWT secret matches
supabase status

# Verify anon key in environment.ts matches output from:
supabase status | grep "anon key"
```

## Step 14: Clean Up

When finished testing:

```bash
# Stop Supabase
supabase stop

# Stop frontend
# Press Ctrl+C in frontend terminal

# Optional: Remove all Supabase data
supabase db reset
```

## Next Steps

Once all tests pass:
- ✅ Authentication working
- ✅ Game creation/joining working
- ✅ Real-time updates working
- ✅ Card dealing working
- ✅ Response submission working
- ✅ Winner judging working

You're ready to proceed to **Phase 4: Remove NestJS Backend**!

## Need Help?

If you encounter issues:
1. Check Supabase logs: `supabase logs`
2. Check Edge Function logs in the terminal where you ran `supabase functions serve`
3. Check browser console for errors
4. Verify database state in Supabase Studio
5. Ensure all migrations ran: `supabase db reset`

---

**Testing Complete!** This comprehensive test ensures all Phase 3 functionality works correctly before removing the NestJS backend.
