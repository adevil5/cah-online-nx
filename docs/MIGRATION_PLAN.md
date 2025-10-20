# CAH Online Migration Plan: Angular 20 + Supabase (No Backend)

**Goal**: Migrate from Angular 17 + NestJS + Supabase to Angular 20+ + Supabase only architecture, using NgRx SignalStore for state management.

**Target Stack**:
- Nx 21.6.4
- Angular 20.3.4
- NgRx SignalStore 20.0.1
- Supabase (latest)
- Free tier deployments only

---

## Table of Contents

1. [Current State Analysis](#current-state-analysis)
2. [Migration Phases](#migration-phases)
3. [Detailed Steps](#detailed-steps)
4. [Architecture Changes](#architecture-changes)
5. [Success Criteria](#success-criteria)
6. [Rollback Plan](#rollback-plan)

---

## Current State Analysis

### Current Architecture (v17 Stack)
```
apps/
├── backend/          # NestJS 10 (TO BE REMOVED)
├── backend-e2e/      # E2E tests for backend (TO BE REMOVED)
├── frontend/         # Angular 17 (TO BE UPGRADED)
└── frontend-e2e/     # E2E tests (TO BE UPDATED)
libs/
└── util-type-helpers/ # Shared utilities (TO BE UPDATED)
```

### Current Versions
- Nx: 17.2.8 → **21.6.4**
- Angular: 17.0.0 → **20.3.4**
- NestJS: 10.0.2 → **REMOVE**
- Supabase: 2.39.3 → **Latest**
- No NgRx → **Add NgRx SignalStore 20.0.1**

### Current Backend Responsibilities (To Move)
1. **Authentication**: JWT guards, login/register endpoints
2. **Game Logic**: Game controller, game service
3. **Database Operations**: Supabase client wrapper

### Migration Strategy
**Option**: Incremental migration with feature parity validation at each step.

---

## Migration Phases

### Phase 0: Preparation & Documentation (Week 1)
- ✅ Create migration plan (this document)
- ✅ Create technical documentation
- ✅ Backup current codebase
- ✅ Create migration branch

### Phase 1: Nx & Angular Upgrade (Week 1)
- ✅ Update Nx to v21.6.5
- ✅ Upgrade Angular 17 → 20.3.6
- ✅ Migrate to control flow syntax (@if, @for)
- ✅ Update dependencies
- ✅ Verify frontend still works with existing backend

### Phase 2: Add NgRx SignalStore (Week 2)
- ✅ Install @ngrx/signals
- ✅ Create SignalStore architecture
- ✅ Implement auth state management
- ✅ Implement player state management
- ✅ Implement game state management
- ✅ Implement round state management
- ✅ Implement card state management

### Phase 3: Move Backend Logic to Supabase (Week 2-3)
- ✅ Create Supabase Edge Functions for complex logic
- ✅ Create PostgreSQL functions for simple operations
- ✅ Set up Row Level Security (RLS) policies
- ✅ Implement Supabase Realtime channels
- ✅ Update frontend to call Edge Functions directly

### Phase 4: Remove NestJS Backend (Week 3)
- Remove backend app using Nx
- Remove backend-e2e app
- Remove NestJS dependencies
- Update authentication to use Supabase Auth directly
- Update CI/CD configuration

### Phase 5: Testing & Documentation (Week 4)
- End-to-end testing with new architecture
- Performance testing
- Update deployment documentation
- Create user setup guide
- Free tier optimization

### Phase 6: Deployment (Week 4)
- Deploy Supabase project (free tier)
- Deploy frontend to Vercel/Netlify (free tier)
- Test production environment
- Monitor and adjust

---

## Detailed Steps

### Step 1: Backup & Branch Creation

```bash
# Create backup branch
git checkout -b backup/angular17-nestjs-architecture
git push origin backup/angular17-nestjs-architecture

# Create migration branch
git checkout main
git pull origin main
git checkout -b migration/angular20-supabase-only
```

### Step 2: Update Nx to Latest

```bash
# Interactive migration (recommended)
npx nx migrate latest --interactive

# Review migration.json
cat migrations.json

# Run migrations
npx nx migrate --run-migrations

# Clean up
rm migrations.json
```

**Expected Changes**:
- Nx 17.2.8 → 21.6.4
- Updated workspace configuration
- New Nx plugins for Angular 20

**Verification**:
```bash
npx nx --version  # Should show 21.6.4
```

### Step 3: Upgrade Angular to v20

```bash
# Nx will handle Angular upgrade during migrate
# Manually update if needed:
npx nx migrate @angular/core@20.3.4

# Run migrations
npx nx migrate --run-migrations
```

**Expected Changes**:
- Angular packages: 17.0.0 → 20.3.4
- Automatic migration to control flow syntax
- Zone.js updates
- Router updates

**Manual Updates Required**:
1. Update `apps/frontend/src/app/app.config.ts` if using standalone APIs
2. Replace `*ngIf` with `@if` (may be auto-migrated)
3. Replace `*ngFor` with `@for` (may be auto-migrated)
4. Update any deprecated APIs

**Verification**:
```bash
# Build frontend
npx nx build frontend

# Run tests
npx nx test frontend

# Serve locally
npx nx serve frontend
```

### Step 4: Install NgRx SignalStore

```bash
# Install NgRx packages
npm install @ngrx/signals@20.0.1 --save
npm install @ngrx/operators@20.0.1 --save

# Install devDependencies if needed for schematics
npm install @ngrx/schematics@20.0.1 --save-dev
```

**Create Store Structure**:
```bash
mkdir -p apps/frontend/src/app/store
mkdir -p apps/frontend/src/app/store/game
mkdir -p apps/frontend/src/app/store/player
mkdir -p apps/frontend/src/app/store/auth
```

**Files to Create**:
- `apps/frontend/src/app/store/game/game.store.ts` - Game state
- `apps/frontend/src/app/store/player/player.store.ts` - Player state
- `apps/frontend/src/app/store/auth/auth.store.ts` - Auth state

### Step 5: Create Supabase Edge Functions

```bash
# Create Edge Functions directory structure
npx supabase functions new shuffle-cards
npx supabase functions new start-round
npx supabase functions new submit-response
npx supabase functions new judge-winner
```

**Edge Functions to Create**:

1. **shuffle-cards**: Shuffle and deal cards to players
2. **start-round**: Initialize a new round with Card Czar selection
3. **submit-response**: Validate and record player responses
4. **judge-winner**: Process Card Czar's choice and update scores

**Backend Logic Mapping**:

| Current Backend (NestJS) | New Implementation |
|--------------------------|-------------------|
| `auth/auth.controller.ts` | Supabase Auth API + RLS |
| `game/game.controller.ts` | Edge Functions + DB Functions |
| `game/game.service.ts` | Edge Functions |
| `database/supabase.service.ts` | Direct Supabase client |

### Step 6: Create Database Functions

Create PostgreSQL functions for simple operations:

```sql
-- Example: Get player cards
CREATE OR REPLACE FUNCTION get_player_cards(p_player_session_id UUID)
RETURNS SETOF cards AS $$
  SELECT c.* FROM cards c
  JOIN response_cards rc ON rc.card_id = c.id
  WHERE rc.player_session_id = p_player_session_id
  ORDER BY rc.created_at;
$$ LANGUAGE sql SECURITY DEFINER;
```

**Database Functions to Create**:
- `get_player_cards(player_session_id)` - Get hand
- `join_game(game_code, player_id)` - Join lobby
- `get_game_state(game_id)` - Get current state
- `increment_score(player_session_id, points)` - Update score

### Step 7: Set Up Row Level Security (RLS)

Create RLS policies to replace AuthGuard logic:

```sql
-- Example: Players can only see their own cards
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

**RLS Policies Needed**:
- Players can only see their own cards
- All players in a game can see game state
- Only Card Czar can judge responses
- Only host can start game

### Step 8: Update Frontend Services

**Create New Services**:

1. **apps/frontend/src/app/services/supabase.service.ts**
```typescript
@Injectable({ providedIn: 'root' })
export class SupabaseService {
  private supabase = createClient(env.supabaseUrl, env.supabaseKey);

  // Auth methods
  signIn(email: string, password: string) { }
  signUp(email: string, password: string) { }
  signOut() { }

  // Edge Function calls
  async shuffleCards(gameId: string) { }
  async startRound(gameId: string) { }

  // Realtime subscriptions
  subscribeToGame(gameId: string, callback: Function) { }
}
```

2. **apps/frontend/src/app/services/game-realtime.service.ts**
```typescript
@Injectable({ providedIn: 'root' })
export class GameRealtimeService {
  setupGameChannel(gameId: string) {
    return this.supabase.channel(`game:${gameId}`)
      .on('broadcast', { event: 'card-played' }, (payload) => {
        // Update SignalStore
      })
      .subscribe();
  }
}
```

### Step 9: Remove NestJS Backend

```bash
# Remove backend application
npx nx g @nx/workspace:remove backend

# Remove backend E2E tests
npx nx g @nx/workspace:remove backend-e2e

# Manual cleanup
rm -rf apps/backend
rm -rf apps/backend-e2e
```

**Remove Dependencies**:
```bash
npm uninstall @nestjs/common @nestjs/core @nestjs/jwt @nestjs/platform-express
npm uninstall @nestjs/schematics @nestjs/testing
npm uninstall @nx/nest @nx/node @nx/webpack
npm uninstall reflect-metadata
```

**Update Files**:
- Remove backend from `nx.json` targets
- Remove backend from `tsconfig.base.json` paths
- Update `.eslintrc.json` to remove backend rules

### Step 10: Update Authentication Flow

**Replace NestJS Auth with Supabase Auth**:

Before (NestJS):
```typescript
POST /api/auth/login → JWT token
Authorization: Bearer <token>
```

After (Supabase):
```typescript
supabase.auth.signInWithPassword({ email, password })
// Token automatically handled by Supabase client
```

**Update Angular Components**:
- Remove HTTP interceptors for JWT
- Use Supabase session management
- Update route guards to check Supabase session

### Step 11: Update Supabase Configuration

**Update `supabase/config.toml`**:
```toml
[api]
enabled = true
port = 54321
max_rows = 1000

[auth]
enabled = true
external_providers_enabled = false
# For free tier, disable unused providers

[realtime]
enabled = true
max_connections = 100  # Free tier limit

[storage]
enabled = false  # Not needed for CAH
```

**Create `.env.local`**:
```env
SUPABASE_URL=http://localhost:54321
SUPABASE_ANON_KEY=<local-anon-key>
SUPABASE_SERVICE_ROLE_KEY=<local-service-key>
```

### Step 12: Update Database Schema

**Add New Functions/Triggers**:
```sql
-- Auto-update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Apply to relevant tables
CREATE TRIGGER update_game_sessions_updated_at
BEFORE UPDATE ON game_sessions
FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
```

**Optimize for Free Tier**:
- Add indexes for frequent queries
- Set up cascade deletes to avoid orphaned data
- Add constraints to prevent data bloat

### Step 13: Update Frontend Build Configuration

**Remove Backend Proxy** (apps/frontend/proxy.conf.json):
```json
{
  "/api": {
    "target": "http://localhost:3000",  // ← Remove this
    "secure": false
  }
}
```

**Update Environment Files**:

`apps/frontend/src/environments/environment.ts`:
```typescript
export const environment = {
  production: false,
  supabaseUrl: 'http://localhost:54321',
  supabaseAnonKey: '<your-local-anon-key>'
};
```

`apps/frontend/src/environments/environment.prod.ts`:
```typescript
export const environment = {
  production: true,
  supabaseUrl: 'https://your-project.supabase.co',
  supabaseAnonKey: '<your-prod-anon-key>'
};
```

### Step 14: Simplify Project Structure

**New Structure**:
```
cah-online-nx/
├── apps/
│   ├── frontend/           # Angular 20 app
│   └── frontend-e2e/       # E2E tests
├── docs/                   # Documentation
│   ├── MIGRATION_PLAN.md   # This file
│   ├── NGRX_SIGNALSTORE.md # SignalStore guide
│   ├── SUPABASE_GUIDE.md   # Supabase integration
│   ├── NX_TIPS.md          # Nx commands reference
│   └── GAME_RULES.md       # Game instructions
├── libs/
│   └── util-type-helpers/  # Shared utilities
├── supabase/
│   ├── functions/          # Edge Functions
│   ├── migrations/         # Database schema
│   └── config.toml
├── nx.json
├── package.json
└── README.md              # Updated setup guide
```

### Step 15: Testing Strategy

**Unit Tests**:
```bash
# Test SignalStore
npx nx test frontend --testFile=game.store.spec.ts

# Test services
npx nx test frontend --testFile=supabase.service.spec.ts
```

**Integration Tests**:
```bash
# Test with local Supabase
npx supabase start
npx nx serve frontend
# Manual testing of game flow
```

**E2E Tests**:
```bash
# Update Playwright tests to remove backend calls
npx nx e2e frontend-e2e
```

**Performance Testing**:
- Test Realtime latency (should be <100ms)
- Test Edge Function cold starts (should be <1s)
- Test concurrent games (free tier limits)

---

## Architecture Changes

### Before (NestJS Backend)
```
┌─────────────┐      HTTP       ┌─────────────┐
│   Angular   │ ───────────────> │   NestJS    │
│  Frontend   │ <─────────────── │   Backend   │
└─────────────┘                  └─────────────┘
                                       │
                                       ↓
                              ┌─────────────────┐
                              │    Supabase     │
                              │   (Database)    │
                              └─────────────────┘
```

### After (Supabase Only)
```
┌──────────────────────────────────────────────┐
│              Angular 20 Frontend             │
│                                              │
│  ┌─────────────────────────────────────┐   │
│  │      NgRx SignalStore               │   │
│  │  - GameStore                        │   │
│  │  - PlayerStore                      │   │
│  │  - AuthStore                        │   │
│  └─────────────────────────────────────┘   │
│                                              │
│  ┌─────────────────────────────────────┐   │
│  │      Supabase Client                │   │
│  │  - Auth                             │   │
│  │  - Database queries                 │   │
│  │  - Realtime subscriptions           │   │
│  │  - Edge Function calls              │   │
│  └─────────────────────────────────────┘   │
└──────────────────────────────────────────────┘
                     │
                     ↓
        ┌─────────────────────────────────┐
        │        Supabase Platform        │
        │                                 │
        │  ┌────────────────────────┐    │
        │  │  PostgreSQL Database   │    │
        │  │  - RLS Policies        │    │
        │  │  - DB Functions        │    │
        │  └────────────────────────┘    │
        │                                 │
        │  ┌────────────────────────┐    │
        │  │  Edge Functions        │    │
        │  │  - shuffle-cards       │    │
        │  │  - start-round         │    │
        │  │  - submit-response     │    │
        │  └────────────────────────┘    │
        │                                 │
        │  ┌────────────────────────┐    │
        │  │  Realtime              │    │
        │  │  - WebSocket channels  │    │
        │  │  - Broadcast events    │    │
        │  └────────────────────────┘    │
        └─────────────────────────────────┘
```

### State Management Flow (NgRx SignalStore)
```typescript
// Game state flow
User Action (UI)
   ↓
Component calls Store Method
   ↓
Store updates Signal (optimistic)
   ↓
Store calls Supabase Edge Function
   ↓
Edge Function processes & updates DB
   ↓
Realtime broadcasts change to all clients
   ↓
Store receives update & confirms state
   ↓
UI auto-updates (Signal reactivity)
```

---

## Success Criteria

### Functional Requirements
- [ ] All game features work without backend
- [ ] Authentication via Supabase Auth
- [ ] Real-time updates work for all players
- [ ] Game state persists correctly
- [ ] Card shuffling/dealing works
- [ ] Turn logic enforced correctly
- [ ] Scoring system accurate

### Non-Functional Requirements
- [ ] Frontend builds successfully
- [ ] All tests pass
- [ ] No NestJS dependencies remain
- [ ] Documentation complete
- [ ] Free tier limits respected
- [ ] Setup time < 10 minutes for new developers

### Performance Requirements
- [ ] Realtime latency < 100ms
- [ ] Edge Function cold start < 1s
- [ ] Page load time < 2s
- [ ] Support 4-10 concurrent games (free tier)

### Developer Experience
- [ ] Clear documentation for:
  - [ ] Local setup
  - [ ] NgRx SignalStore patterns
  - [ ] Supabase integration
  - [ ] Deployment process
- [ ] Nx commands documented
- [ ] Game rules documented

---

## Rollback Plan

### If Migration Fails

**Option 1: Rollback to Backup Branch**
```bash
git checkout backup/angular17-nestjs-architecture
git checkout -b main-rollback
git push origin main-rollback --force
```

**Option 2: Incremental Rollback**
- Keep frontend changes (Angular 20, NgRx)
- Re-enable NestJS backend
- Keep both architectures running (transition period)

**Option 3: Hybrid Approach**
- Keep NestJS for complex operations
- Use Supabase for realtime/simple queries
- Gradually move logic to Edge Functions

### Risk Mitigation

**Risks**:
1. **Supabase free tier limits**: 500MB database, 2GB bandwidth/month
   - Mitigation: Monitor usage, optimize queries, add cleanup jobs
2. **Edge Function cold starts**: Can be slow on free tier
   - Mitigation: Keep functions warm with cron job, optimize bundle size
3. **Loss of type safety**: No shared types between frontend/backend
   - Mitigation: Generate types from Supabase schema, use `supabase gen types`

---

## Next Steps

1. **Review this plan** with team/stakeholders
2. **Create feature branch**: `migration/angular20-supabase-only`
3. **Start Phase 1**: Nx & Angular upgrade
4. **Document progress** in this file
5. **Update documentation** as you go

---

## Related Documentation

- [NgRx SignalStore Guide](./NGRX_SIGNALSTORE.md)
- [Supabase Integration Guide](./SUPABASE_GUIDE.md)
- [Nx Tips & Commands](./NX_TIPS.md)
- [Game Rules & Instructions](./GAME_RULES.md)

---

## Questions & Decisions Log

### Decision 1: Edge Functions vs Database Functions
**Question**: When to use Edge Functions vs PostgreSQL functions?

**Decision**:
- **Edge Functions**: Complex logic, external APIs, TypeScript
- **Database Functions**: Simple CRUD, data validation, SQL-only

**Rationale**: Edge Functions are easier to test and maintain for complex logic.

### Decision 2: State Management
**Question**: NgRx SignalStore vs standalone Signals?

**Decision**: NgRx SignalStore

**Rationale**: Better patterns for complex state, entity management built-in, easier testing.

### Decision 3: Authentication
**Question**: Custom auth vs Supabase Auth?

**Decision**: Supabase Auth

**Rationale**: Free tier includes auth, reduces code, industry standard.

---

## Timeline

| Phase | Duration | Status |
|-------|----------|--------|
| Phase 0: Preparation | 2 days | ✅ Complete |
| Phase 1: Nx & Angular Upgrade | 3 days | ✅ Complete |
| Phase 2: Add NgRx SignalStore | 4 days | ✅ Complete |
| Phase 3: Move to Supabase | 7 days | ✅ Complete |
| Phase 4: Remove NestJS | 2 days | ⏹ Not Started |
| Phase 5: Testing & Docs | 4 days | ⏹ Not Started |
| Phase 6: Deployment | 2 days | ⏹ Not Started |
| **Total** | **~4 weeks** | |

---

**Last Updated**: 2025-10-20
**Version**: 1.0
**Author**: Claude Code
**Status**: Draft - Pending Review
