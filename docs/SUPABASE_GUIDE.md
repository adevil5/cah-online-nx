# Supabase Integration Guide

Complete guide to integrating Supabase in the CAH Online Angular 20 application.

---

## Table of Contents

1. [What is Supabase?](#what-is-supabase)
2. [Local Development Setup](#local-development-setup)
3. [Authentication](#authentication)
4. [Database Queries](#database-queries)
5. [Realtime Subscriptions](#realtime-subscriptions)
6. [Edge Functions](#edge-functions)
7. [Row Level Security (RLS)](#row-level-security-rls)
8. [Type Safety](#type-safety)
9. [Free Tier Optimization](#free-tier-optimization)
10. [Deployment](#deployment)

---

## What is Supabase?

Supabase is an open-source Firebase alternative that provides:

- **PostgreSQL Database**: Full SQL database with extensions
- **Authentication**: Email/password, OAuth, magic links
- **Realtime**: WebSocket subscriptions to database changes
- **Edge Functions**: Serverless TypeScript/Deno functions
- **Storage**: File storage (not needed for CAH)
- **Auto-generated APIs**: REST and GraphQL APIs

### Why Supabase for CAH?

- ✅ **Free tier**: 500MB database, unlimited API requests
- ✅ **Real-time**: Built-in WebSocket support for multiplayer
- ✅ **No backend needed**: Auth + API + realtime out of the box
- ✅ **PostgreSQL**: Relational data perfect for game state
- ✅ **Self-hostable**: Docker Compose for local dev or production
- ✅ **TypeScript**: Generated types from database schema

---

## Local Development Setup

### Step 1: Install Supabase CLI

```bash
# Install globally
npm install -g supabase

# Or use with npx
npx supabase --version
```

### Step 2: Initialize Supabase

```bash
# Already initialized in this project
# If starting fresh:
# npx supabase init
```

### Step 3: Start Local Supabase

```bash
# Start all services (Postgres, API, Studio, etc.)
npx supabase start

# Output will show:
# API URL: http://localhost:54321
# DB URL: postgresql://postgres:postgres@localhost:54322/postgres
# Studio URL: http://localhost:54323
# anon key: eyJhbGc...
# service_role key: eyJhbGc...
```

**Note**: Docker must be running.

### Step 4: Access Supabase Studio

Open http://localhost:54323 in your browser to:
- View tables and data
- Run SQL queries
- Test RLS policies
- Monitor realtime connections
- View logs

### Step 5: Stop Supabase

```bash
# Stop services
npx supabase stop

# Stop and reset all data
npx supabase stop --no-backup
```

---

## Authentication

### Setup Auth Service

**File**: `apps/frontend/src/app/services/supabase.service.ts`

```typescript
import { Injectable } from '@angular/core';
import { createClient, SupabaseClient, User, Session } from '@supabase/supabase-js';
import { environment } from '../../environments/environment';
import { signal, computed } from '@angular/core';

@Injectable({ providedIn: 'root' })
export class SupabaseService {
  private supabase: SupabaseClient;

  // Auth state signals
  private sessionSignal = signal<Session | null>(null);
  private userSignal = signal<User | null>(null);

  // Public computed signals
  readonly session = this.sessionSignal.asReadonly();
  readonly user = this.userSignal.asReadonly();
  readonly isAuthenticated = computed(() => this.sessionSignal() !== null);

  constructor() {
    this.supabase = createClient(
      environment.supabaseUrl,
      environment.supabaseAnonKey
    );

    // Initialize auth state
    this.initAuthListener();
  }

  // Initialize and listen for auth changes
  private async initAuthListener() {
    // Get initial session
    const { data: { session } } = await this.supabase.auth.getSession();
    this.sessionSignal.set(session);
    this.userSignal.set(session?.user ?? null);

    // Listen for changes
    this.supabase.auth.onAuthStateChange((_event, session) => {
      this.sessionSignal.set(session);
      this.userSignal.set(session?.user ?? null);
    });
  }

  // Sign up
  async signUp(email: string, password: string) {
    const { data, error } = await this.supabase.auth.signUp({
      email,
      password,
    });

    if (error) throw error;
    return data;
  }

  // Sign in
  async signIn(email: string, password: string) {
    const { data, error } = await this.supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) throw error;
    return data;
  }

  // Sign out
  async signOut() {
    const { error } = await this.supabase.auth.signOut();
    if (error) throw error;
  }

  // Get current user ID
  getCurrentUserId(): string | undefined {
    return this.userSignal()?.id;
  }

  // Get access token
  async getAccessToken(): Promise<string | null> {
    const session = this.sessionSignal();
    return session?.access_token ?? null;
  }

  // Get Supabase client (for direct usage)
  getClient(): SupabaseClient {
    return this.supabase;
  }
}
```

### Auth Guard

**File**: `apps/frontend/src/app/guards/auth.guard.ts`

```typescript
import { inject } from '@angular/core';
import { Router, CanActivateFn } from '@angular/router';
import { SupabaseService } from '../services/supabase.service';

export const authGuard: CanActivateFn = (route, state) => {
  const supabase = inject(SupabaseService);
  const router = inject(Router);

  if (supabase.isAuthenticated()) {
    return true;
  }

  // Redirect to login
  return router.createUrlTree(['/login'], {
    queryParams: { returnUrl: state.url }
  });
};
```

**Usage in Routes**:

```typescript
import { Routes } from '@angular/router';
import { authGuard } from './guards/auth.guard';

export const routes: Routes = [
  { path: 'login', component: LoginComponent },
  {
    path: 'game',
    component: GameComponent,
    canActivate: [authGuard], // ✅ Protected route
  },
];
```

### Login Component Example

```typescript
import { Component, inject } from '@angular/core';
import { Router } from '@angular/router';
import { SupabaseService } from '../services/supabase.service';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [FormsModule],
  template: `
    <div>
      <h1>Login</h1>
      @if (error) {
        <p class="error">{{ error }}</p>
      }
      <form (ngSubmit)="login()">
        <input
          type="email"
          [(ngModel)]="email"
          name="email"
          placeholder="Email"
          required
        />
        <input
          type="password"
          [(ngModel)]="password"
          name="password"
          placeholder="Password"
          required
        />
        <button type="submit" [disabled]="loading">
          {{ loading ? 'Loading...' : 'Login' }}
        </button>
      </form>
      <p>
        Don't have an account?
        <a (click)="toggleMode()">Sign up</a>
      </p>
    </div>
  `,
})
export class LoginComponent {
  private supabase = inject(SupabaseService);
  private router = inject(Router);

  email = '';
  password = '';
  loading = false;
  error = '';
  isSignUp = false;

  async login() {
    this.loading = true;
    this.error = '';

    try {
      if (this.isSignUp) {
        await this.supabase.signUp(this.email, this.password);
        this.error = 'Check your email for verification link';
      } else {
        await this.supabase.signIn(this.email, this.password);
        this.router.navigate(['/lobby']);
      }
    } catch (error: any) {
      this.error = error.message;
    } finally {
      this.loading = false;
    }
  }

  toggleMode() {
    this.isSignUp = !this.isSignUp;
    this.error = '';
  }
}
```

---

## Database Queries

### Setup Database Service

```typescript
import { Injectable, inject } from '@angular/core';
import { SupabaseService } from './supabase.service';
import { Database } from '../../types/supabase'; // Generated types

@Injectable({ providedIn: 'root' })
export class GameDatabaseService {
  private supabase = inject(SupabaseService).getClient();

  // Get game by code
  async getGameByCode(code: string) {
    const { data, error } = await this.supabase
      .from('game_sessions')
      .select('*')
      .eq('code', code)
      .single();

    if (error) throw error;
    return data;
  }

  // Get all players in game
  async getGamePlayers(gameId: string) {
    const { data, error } = await this.supabase
      .from('player_sessions')
      .select(`
        *,
        players (
          id,
          username
        )
      `)
      .eq('game_session_id', gameId)
      .order('joined_at', { ascending: true });

    if (error) throw error;
    return data;
  }

  // Create new game
  async createGame(hostId: string, scoreLimit: number) {
    const { data, error } = await this.supabase
      .from('game_sessions')
      .insert({
        host_id: hostId,
        score_limit: scoreLimit,
        state: 'lobby',
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  }

  // Update game state
  async updateGameState(gameId: string, state: string) {
    const { error } = await this.supabase
      .from('game_sessions')
      .update({ state })
      .eq('id', gameId);

    if (error) throw error;
  }

  // Join game
  async joinGame(gameId: string, playerId: string) {
    const { data, error } = await this.supabase
      .from('player_sessions')
      .insert({
        game_session_id: gameId,
        player_id: playerId,
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  }

  // Get player's cards
  async getPlayerCards(playerSessionId: string) {
    const { data, error } = await this.supabase
      .from('response_cards')
      .select(`
        *,
        cards (
          id,
          text,
          type
        )
      `)
      .eq('player_session_id', playerSessionId);

    if (error) throw error;
    return data;
  }

  // Submit response
  async submitResponse(roundId: string, playerSessionId: string, cardIds: string[]) {
    const { data, error } = await this.supabase
      .from('responses')
      .insert({
        round_id: roundId,
        player_session_id: playerSessionId,
      })
      .select()
      .single();

    if (error) throw error;

    // Link cards to response
    const responseCardLinks = cardIds.map(cardId => ({
      response_id: data.id,
      card_id: cardId,
    }));

    const { error: linkError } = await this.supabase
      .from('response_cards')
      .insert(responseCardLinks);

    if (linkError) throw linkError;

    return data;
  }
}
```

### Query Patterns

#### Select with Joins
```typescript
// Get game with all related data
const { data } = await supabase
  .from('game_sessions')
  .select(`
    *,
    rounds (
      id,
      phase,
      black_card:cards (
        id,
        text
      )
    ),
    player_sessions (
      id,
      score,
      player:players (
        username
      )
    )
  `)
  .eq('id', gameId)
  .single();
```

#### Filtering
```typescript
// Get active games
const { data } = await supabase
  .from('game_sessions')
  .select('*')
  .eq('state', 'in_progress')
  .gte('created_at', new Date(Date.now() - 3600000).toISOString())
  .order('created_at', { ascending: false })
  .limit(10);
```

#### Pagination
```typescript
const PAGE_SIZE = 20;
const { data, count } = await supabase
  .from('game_sessions')
  .select('*', { count: 'exact' })
  .range(page * PAGE_SIZE, (page + 1) * PAGE_SIZE - 1);
```

---

## Realtime Subscriptions

### Setup Realtime Service

**File**: `apps/frontend/src/app/services/game-realtime.service.ts`

```typescript
import { Injectable, inject } from '@angular/core';
import { SupabaseService } from './supabase.service';
import { RealtimeChannel } from '@supabase/supabase-js';

@Injectable({ providedIn: 'root' })
export class GameRealtimeService {
  private supabase = inject(SupabaseService).getClient();
  private channels = new Map<string, RealtimeChannel>();

  // Subscribe to game room
  subscribeToGame(gameId: string, callbacks: {
    onPlayerJoined?: (player: any) => void;
    onGameStateChange?: (state: any) => void;
    onCardPlayed?: (data: any) => void;
    onRoundComplete?: (data: any) => void;
  }) {
    const channelName = `game:${gameId}`;

    // Remove existing subscription
    if (this.channels.has(channelName)) {
      this.unsubscribe(gameId);
    }

    // Create channel
    const channel = this.supabase.channel(channelName);

    // Listen to database changes (player_sessions table)
    channel.on(
      'postgres_changes',
      {
        event: 'INSERT',
        schema: 'public',
        table: 'player_sessions',
        filter: `game_session_id=eq.${gameId}`,
      },
      (payload) => {
        callbacks.onPlayerJoined?.(payload.new);
      }
    );

    // Listen to game state updates
    channel.on(
      'postgres_changes',
      {
        event: 'UPDATE',
        schema: 'public',
        table: 'game_sessions',
        filter: `id=eq.${gameId}`,
      },
      (payload) => {
        callbacks.onGameStateChange?.(payload.new);
      }
    );

    // Listen to broadcast events
    channel.on('broadcast', { event: 'card-played' }, (payload) => {
      callbacks.onCardPlayed?.(payload);
    });

    channel.on('broadcast', { event: 'round-complete' }, (payload) => {
      callbacks.onRoundComplete?.(payload);
    });

    // Subscribe
    channel.subscribe((status) => {
      if (status === 'SUBSCRIBED') {
        console.log(`Subscribed to game ${gameId}`);
      }
    });

    this.channels.set(channelName, channel);
    return channel;
  }

  // Subscribe to presence (online players)
  subscribeToPresence(gameId: string, playerId: string, callbacks: {
    onJoin?: (player: any) => void;
    onLeave?: (player: any) => void;
  }) {
    const channelName = `game:${gameId}:presence`;

    const channel = this.supabase.channel(channelName);

    // Track this player's presence
    channel.on('presence', { event: 'join' }, ({ key, newPresences }) => {
      console.log('Player joined:', newPresences);
      callbacks.onJoin?.(newPresences[0]);
    });

    channel.on('presence', { event: 'leave' }, ({ key, leftPresences }) => {
      console.log('Player left:', leftPresences);
      callbacks.onLeave?.(leftPresences[0]);
    });

    channel.subscribe(async (status) => {
      if (status === 'SUBSCRIBED') {
        await channel.track({
          playerId,
          onlineAt: new Date().toISOString(),
        });
      }
    });

    this.channels.set(channelName, channel);
    return channel;
  }

  // Broadcast event
  async broadcast(gameId: string, event: string, payload: any) {
    const channelName = `game:${gameId}`;
    const channel = this.channels.get(channelName);

    if (!channel) {
      throw new Error(`Channel ${channelName} not found`);
    }

    await channel.send({
      type: 'broadcast',
      event,
      payload,
    });
  }

  // Unsubscribe from game
  unsubscribe(gameId: string) {
    const channelName = `game:${gameId}`;
    const channel = this.channels.get(channelName);

    if (channel) {
      this.supabase.removeChannel(channel);
      this.channels.delete(channelName);
    }
  }

  // Unsubscribe from all
  unsubscribeAll() {
    this.channels.forEach((channel) => {
      this.supabase.removeChannel(channel);
    });
    this.channels.clear();
  }
}
```

### Usage in Component

```typescript
export class GameComponent implements OnInit, OnDestroy {
  private realtime = inject(GameRealtimeService);
  private gameStore = inject(GameStore);

  ngOnInit() {
    const gameId = this.gameStore.id()!;

    this.realtime.subscribeToGame(gameId, {
      onPlayerJoined: (player) => {
        console.log('New player:', player);
        this.gameStore.addPlayer(player);
      },
      onGameStateChange: (state) => {
        console.log('Game state changed:', state);
        this.gameStore.updateState(state);
      },
      onCardPlayed: ({ playerId, cardIds }) => {
        console.log(`Player ${playerId} played cards`);
        this.gameStore.recordPlay(playerId, cardIds);
      },
    });
  }

  ngOnDestroy() {
    const gameId = this.gameStore.id()!;
    this.realtime.unsubscribe(gameId);
  }
}
```

---

## Edge Functions

### Create Edge Function

```bash
# Create new function
npx supabase functions new shuffle-cards

# This creates: supabase/functions/shuffle-cards/index.ts
```

### Edge Function Example

**File**: `supabase/functions/shuffle-cards/index.ts`

```typescript
import { serve } from 'https://deno.land/std@0.168.0/http/server.ts';
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2';

// CORS headers
const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
};

serve(async (req) => {
  // Handle CORS preflight
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    // Get request body
    const { gameId } = await req.json();

    // Create Supabase client with service role (bypasses RLS)
    const supabaseAdmin = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? '',
    );

    // Get authenticated user (from JWT)
    const authHeader = req.headers.get('Authorization')!;
    const token = authHeader.replace('Bearer ', '');
    const { data: { user } } = await supabaseAdmin.auth.getUser(token);

    if (!user) {
      throw new Error('Unauthorized');
    }

    // Get all white cards from game
    const { data: cards, error: cardsError } = await supabaseAdmin
      .from('game_cards')
      .select('card_id')
      .eq('game_session_id', gameId)
      .eq('type', 'white');

    if (cardsError) throw cardsError;

    // Shuffle cards
    const shuffled = cards.sort(() => Math.random() - 0.5);

    // Get all players
    const { data: players, error: playersError } = await supabaseAdmin
      .from('player_sessions')
      .select('id')
      .eq('game_session_id', gameId);

    if (playersError) throw playersError;

    // Deal 7 cards to each player
    const HAND_SIZE = 7;
    const dealtCards = [];

    for (let i = 0; i < players.length; i++) {
      const playerCards = shuffled.slice(i * HAND_SIZE, (i + 1) * HAND_SIZE);

      for (const card of playerCards) {
        dealtCards.push({
          player_session_id: players[i].id,
          card_id: card.card_id,
        });
      }
    }

    // Insert dealt cards
    const { error: dealError } = await supabaseAdmin
      .from('response_cards')
      .insert(dealtCards);

    if (dealError) throw dealError;

    return new Response(
      JSON.stringify({ success: true, dealt: dealtCards.length }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 200,
      },
    );
  } catch (error) {
    return new Response(
      JSON.stringify({ error: error.message }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 400,
      },
    );
  }
});
```

### Deploy Edge Function

```bash
# Deploy single function
npx supabase functions deploy shuffle-cards

# Deploy all functions
npx supabase functions deploy

# View logs
npx supabase functions logs shuffle-cards --tail
```

### Call Edge Function from Angular

```typescript
async shuffleAndDeal(gameId: string) {
  const { data, error } = await this.supabase.functions.invoke('shuffle-cards', {
    body: { gameId },
  });

  if (error) throw error;
  return data;
}
```

---

## Row Level Security (RLS)

RLS policies enforce access control at the database level.

### Enable RLS

```sql
-- Enable RLS on table
ALTER TABLE game_sessions ENABLE ROW LEVEL SECURITY;
ALTER TABLE player_sessions ENABLE ROW LEVEL SECURITY;
ALTER TABLE response_cards ENABLE ROW LEVEL SECURITY;
```

### Create Policies

#### Example 1: Players can only see their own cards

```sql
CREATE POLICY "Players can view their own cards"
ON response_cards
FOR SELECT
USING (
  player_session_id IN (
    SELECT id FROM player_sessions
    WHERE player_id = auth.uid()
  )
);
```

#### Example 2: Players in game can see game state

```sql
CREATE POLICY "Players can view games they're in"
ON game_sessions
FOR SELECT
USING (
  id IN (
    SELECT game_session_id FROM player_sessions
    WHERE player_id = auth.uid()
  )
);
```

#### Example 3: Only host can start game

```sql
CREATE POLICY "Only host can update game state"
ON game_sessions
FOR UPDATE
USING (host_id = auth.uid())
WITH CHECK (host_id = auth.uid());
```

#### Example 4: Anyone can create game

```sql
CREATE POLICY "Anyone can create game"
ON game_sessions
FOR INSERT
WITH CHECK (host_id = auth.uid());
```

### Test RLS Policies

In Supabase Studio (http://localhost:54323):
1. Go to Authentication → Policies
2. Click "Test policy"
3. Select user and test queries

### Bypass RLS (Service Role)

Use service role key in Edge Functions to bypass RLS:

```typescript
const supabaseAdmin = createClient(
  supabaseUrl,
  serviceRoleKey, // ⚠️ Never expose in frontend!
);
```

---

## Type Safety

### Generate Types from Database

```bash
# Generate TypeScript types from schema
npx supabase gen types typescript --local > apps/frontend/src/types/supabase.ts
```

**Generated file** (`supabase.ts`):

```typescript
export type Json = string | number | boolean | null | { [key: string]: Json } | Json[];

export interface Database {
  public: {
    Tables: {
      game_sessions: {
        Row: {
          id: string;
          code: string;
          host_id: string;
          state: 'lobby' | 'in_progress' | 'completed';
          score_limit: number;
          created_at: string;
        };
        Insert: {
          id?: string;
          code?: string;
          host_id: string;
          state?: 'lobby' | 'in_progress' | 'completed';
          score_limit?: number;
          created_at?: string;
        };
        Update: {
          id?: string;
          code?: string;
          host_id?: string;
          state?: 'lobby' | 'in_progress' | 'completed';
          score_limit?: number;
        };
      };
      // ... more tables
    };
  };
}
```

### Use Generated Types

```typescript
import { Database } from '../types/supabase';

type GameSession = Database['public']['Tables']['game_sessions']['Row'];
type NewGameSession = Database['public']['Tables']['game_sessions']['Insert'];

// Typed Supabase client
const supabase: SupabaseClient<Database> = createClient(url, key);

// Type-safe queries
const { data } = await supabase
  .from('game_sessions') // ✅ Autocomplete!
  .select('*')
  .single();
// data is typed as GameSession
```

---

## Free Tier Optimization

### Free Tier Limits

- **Database**: 500 MB storage
- **Bandwidth**: 2 GB/month
- **API Requests**: Unlimited
- **Realtime**: 200 concurrent connections, 2M messages/month
- **Edge Functions**: 500,000 invocations/month

### Optimization Strategies

#### 1. Efficient Queries

**Bad**:
```typescript
// Fetches all data, wastes bandwidth
const { data } = await supabase.from('cards').select('*');
```

**Good**:
```typescript
// Only fetch needed columns
const { data } = await supabase
  .from('cards')
  .select('id, text')
  .limit(10);
```

#### 2. Database Cleanup

```sql
-- Delete completed games older than 7 days
DELETE FROM game_sessions
WHERE state = 'completed'
AND created_at < NOW() - INTERVAL '7 days';

-- Create cron job (pg_cron extension)
SELECT cron.schedule(
  'cleanup-old-games',
  '0 2 * * *', -- 2 AM daily
  $$DELETE FROM game_sessions WHERE state = 'completed' AND created_at < NOW() - INTERVAL '7 days'$$
);
```

#### 3. Realtime Optimization

```typescript
// Unsubscribe when not needed
useEffect(() => {
  const channel = realtime.subscribeToGame(gameId, callbacks);

  return () => {
    realtime.unsubscribe(gameId); // ✅ Cleanup
  };
}, [gameId]);
```

#### 4. Edge Function Optimization

```typescript
// Keep functions warm (reduce cold starts)
// Call every 5 minutes with cron job
export const keepWarm = () => {
  // Minimal processing
  return new Response('ok');
};
```

---

## Deployment

### Deploy to Supabase Cloud (Free Tier)

#### Step 1: Create Project

1. Go to https://supabase.com
2. Click "New Project"
3. Choose organization
4. Enter project name
5. Generate database password
6. Select region (closest to users)
7. Click "Create new project"

#### Step 2: Link Local to Cloud

```bash
# Login to Supabase
npx supabase login

# Link project
npx supabase link --project-ref your-project-ref

# Get project ref from dashboard URL:
# https://app.supabase.com/project/YOUR-PROJECT-REF
```

#### Step 3: Push Database Schema

```bash
# Push migrations to cloud
npx supabase db push

# Or reset database (destructive!)
npx supabase db reset --db-url "postgresql://postgres:[password]@db.[project-ref].supabase.co:5432/postgres"
```

#### Step 4: Deploy Edge Functions

```bash
# Deploy all functions
npx supabase functions deploy

# Set secrets
npx supabase secrets set SOME_SECRET=value
```

#### Step 5: Update Frontend Environment

```typescript
// apps/frontend/src/environments/environment.prod.ts
export const environment = {
  production: true,
  supabaseUrl: 'https://your-project-ref.supabase.co',
  supabaseAnonKey: 'your-anon-key', // From project settings
};
```

#### Step 6: Deploy Frontend

**Option A: Vercel**
```bash
npm install -g vercel
nx build frontend --configuration=production
cd dist/apps/frontend
vercel --prod
```

**Option B: Netlify**
```bash
npm install -g netlify-cli
nx build frontend --configuration=production
cd dist/apps/frontend
netlify deploy --prod
```

### Self-Hosting (Docker)

#### Step 1: Clone Supabase Docker

```bash
git clone --depth 1 https://github.com/supabase/supabase
cd supabase/docker
```

#### Step 2: Configure

```bash
cp .env.example .env
# Edit .env with your settings
```

#### Step 3: Start Services

```bash
docker-compose up -d
```

#### Step 4: Access

- API: http://localhost:8000
- Studio: http://localhost:3000

---

## Troubleshooting

### Issue: RLS Blocking Queries

**Symptom**: Queries return empty even though data exists.

**Solution**: Check RLS policies or use service role temporarily:

```typescript
const { data } = await supabase
  .from('games')
  .select('*')
  .eq('id', gameId);

console.log('Data:', data); // Empty?

// Check policy:
// Is auth.uid() returning correct user ID?
```

### Issue: Realtime Not Working

**Symptom**: Subscriptions don't receive updates.

**Solution**:
1. Check realtime is enabled on table
2. Verify RLS policies allow SELECT
3. Check subscription status

```typescript
channel.subscribe((status) => {
  console.log('Status:', status); // Should be 'SUBSCRIBED'
});
```

### Issue: Edge Function Errors

**Symptom**: Functions return 500 errors.

**Solution**: Check logs:

```bash
npx supabase functions logs function-name --tail
```

---

## Resources

- [Supabase Docs](https://supabase.com/docs)
- [Supabase JavaScript Client](https://supabase.com/docs/reference/javascript)
- [Row Level Security Guide](https://supabase.com/docs/guides/auth/row-level-security)
- [Edge Functions Guide](https://supabase.com/docs/guides/functions)
- [Realtime Guide](https://supabase.com/docs/guides/realtime)

---

**Last Updated**: 2025-10-20
**Supabase Version**: Latest (2.x)
**Angular Version**: 20.3.4
