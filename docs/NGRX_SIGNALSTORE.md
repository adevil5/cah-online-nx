# NgRx SignalStore Guide

Complete guide to using NgRx SignalStore v20 in the CAH Online Angular 20 application.

---

## Table of Contents

1. [What is NgRx SignalStore?](#what-is-ngrx-signalstore)
2. [Installation](#installation)
3. [Core Concepts](#core-concepts)
4. [Basic Store Creation](#basic-store-creation)
5. [Store Features](#store-features)
6. [Entity Management](#entity-management)
7. [CAH Specific Stores](#cah-specific-stores)
8. [Best Practices](#best-practices)
9. [Testing](#testing)
10. [Migration from ComponentStore](#migration-from-componentstore)

---

## What is NgRx SignalStore?

NgRx SignalStore is Angular's modern, signal-based state management solution. It's:

- **Lightweight**: Minimal boilerplate compared to classic NgRx
- **Signal-based**: Built on Angular Signals for fine-grained reactivity
- **Type-safe**: Full TypeScript support
- **Extensible**: Custom features via `signalStoreFeature`
- **Local or Global**: Can be provided at component or root level

### Why SignalStore over Classic NgRx?

| Feature | Classic NgRx | SignalStore |
|---------|-------------|-------------|
| Boilerplate | High (actions, reducers, effects, selectors) | Low (just store definition) |
| Reactivity | Zone.js + RxJS | Angular Signals (zoneless ready) |
| Bundle Size | ~50KB | ~15KB |
| Learning Curve | Steep | Moderate |
| DevTools | Yes | Yes (same DevTools) |
| Best For | Enterprise apps with complex state | Most applications |

### Why SignalStore for CAH?

- **Real-time updates**: Signals auto-update UI when game state changes
- **Simple game logic**: No need for complex action orchestration
- **Free tier optimization**: Smaller bundle = faster loads
- **Developer experience**: Less code to maintain

---

## Installation

```bash
# Install NgRx SignalStore (v20)
npm install @ngrx/signals@20.0.1 --save

# Install operators for RxJS interop
npm install @ngrx/operators@20.0.1 --save

# Install DevTools (optional, for debugging)
npm install @ngrx/store-devtools@20.0.1 --save-dev
```

**Update `package.json`**:
```json
{
  "dependencies": {
    "@ngrx/signals": "^20.0.1",
    "@ngrx/operators": "^20.0.1"
  },
  "devDependencies": {
    "@ngrx/store-devtools": "^20.0.1"
  }
}
```

---

## Core Concepts

### Signals Primer

Signals are Angular's reactive primitive:

```typescript
import { signal, computed, effect } from '@angular/core';

// Writable signal
const count = signal(0);
count.set(5);        // Set value
count.update(n => n + 1); // Update based on current value

// Computed signal (derived state)
const doubled = computed(() => count() * 2);

// Effect (side effect when signal changes)
effect(() => {
  console.log('Count changed:', count());
});
```

### SignalStore Structure

A SignalStore is a class with:

1. **State**: Signals holding data
2. **Computed**: Derived values
3. **Methods**: Actions that update state

```typescript
import { signalStore, withState, withComputed, withMethods } from '@ngrx/signals';

export const CounterStore = signalStore(
  withState({ count: 0 }),                    // State
  withComputed(({ count }) => ({              // Computed
    doubled: computed(() => count() * 2),
  })),
  withMethods((store) => ({                   // Methods
    increment() {
      patchState(store, { count: store.count() + 1 });
    },
  })),
);
```

---

## Basic Store Creation

### Simple Store Example

**File**: `apps/frontend/src/app/store/counter.store.ts`

```typescript
import { signalStore, withState, withMethods } from '@ngrx/signals';
import { patchState } from '@ngrx/signals';

// 1. Define state interface
interface CounterState {
  count: number;
  lastUpdated: Date | null;
}

// 2. Create initial state
const initialState: CounterState = {
  count: 0,
  lastUpdated: null,
};

// 3. Create store
export const CounterStore = signalStore(
  { providedIn: 'root' }, // Global store
  withState(initialState),
  withMethods((store) => ({
    increment() {
      patchState(store, {
        count: store.count() + 1,
        lastUpdated: new Date(),
      });
    },
    decrement() {
      patchState(store, {
        count: store.count() - 1,
        lastUpdated: new Date(),
      });
    },
    reset() {
      patchState(store, initialState);
    },
  })),
);
```

### Using Store in Components

```typescript
import { Component, inject } from '@angular/core';
import { CounterStore } from './store/counter.store';

@Component({
  selector: 'app-counter',
  standalone: true,
  template: `
    <div>
      <p>Count: {{ store.count() }}</p>
      <p>Doubled: {{ doubled() }}</p>
      <button (click)="store.increment()">+</button>
      <button (click)="store.decrement()">-</button>
      <button (click)="store.reset()">Reset</button>
    </div>
  `,
  providers: [CounterStore], // Or use providedIn: 'root' in store
})
export class CounterComponent {
  readonly store = inject(CounterStore);

  // Computed signal
  readonly doubled = computed(() => this.store.count() * 2);
}
```

---

## Store Features

### 1. `withState` - Define State

```typescript
interface GameState {
  id: string | null;
  status: 'lobby' | 'playing' | 'finished';
  players: Player[];
}

const initialState: GameState = {
  id: null,
  status: 'lobby',
  players: [],
};

export const GameStore = signalStore(
  withState(initialState),
  // ...
);
```

### 2. `withComputed` - Derived State

```typescript
export const GameStore = signalStore(
  withState(initialState),
  withComputed(({ players, status }) => ({
    // Number of players
    playerCount: computed(() => players().length),

    // Is game ready to start?
    canStart: computed(() =>
      players().length >= 3 && status() === 'lobby'
    ),

    // Current player names
    playerNames: computed(() =>
      players().map(p => p.name).join(', ')
    ),
  })),
);
```

### 3. `withMethods` - Actions

```typescript
export const GameStore = signalStore(
  withState(initialState),
  withMethods((store) => ({
    // Synchronous method
    addPlayer(player: Player) {
      patchState(store, {
        players: [...store.players(), player],
      });
    },

    // Asynchronous method
    async startGame() {
      patchState(store, { status: 'playing' });

      // Call Supabase Edge Function
      const result = await supabase.functions.invoke('start-game', {
        body: { gameId: store.id() },
      });

      // Update state with result
      patchState(store, { /* ... */ });
    },
  })),
);
```

### 4. `withProps` - Static Properties (v19+)

```typescript
import { inject } from '@angular/core';
import { SupabaseService } from '../services/supabase.service';

export const GameStore = signalStore(
  withProps(() => ({
    supabase: inject(SupabaseService), // Inject service
    maxPlayers: 10,                    // Constant
  })),
  withState(initialState),
  withMethods((store) => ({
    async loadGame(gameId: string) {
      // Use injected service
      const game = await store.supabase.getGame(gameId);
      patchState(store, game);
    },
  })),
);
```

### 5. `withHooks` - Lifecycle Hooks

```typescript
import { withHooks } from '@ngrx/signals';

export const GameStore = signalStore(
  withState(initialState),
  withHooks({
    onInit(store) {
      console.log('GameStore initialized');
      // Load initial data
    },
    onDestroy(store) {
      console.log('GameStore destroyed');
      // Cleanup subscriptions
    },
  }),
);
```

---

## Entity Management

For managing collections (players, cards, etc.), use the entity features.

### Basic Entity Store

```typescript
import {
  signalStore,
  withEntities,
  withMethods,
} from '@ngrx/signals';
import { addEntity, updateEntity, removeEntity } from '@ngrx/signals/entities';

interface Player {
  id: string;
  name: string;
  score: number;
}

export const PlayerStore = signalStore(
  { providedIn: 'root' },
  withEntities<Player>(), // Adds: entities, ids, entityMap signals
  withMethods((store) => ({
    addPlayer(player: Player) {
      patchState(store, addEntity(player));
    },
    updatePlayerScore(playerId: string, points: number) {
      patchState(store,
        updateEntity({
          id: playerId,
          changes: (player) => ({
            score: player.score + points,
          }),
        })
      );
    },
    removePlayer(playerId: string) {
      patchState(store, removeEntity(playerId));
    },
  })),
);
```

### Entity Selectors

```typescript
import { selectEntity, selectAllEntities } from '@ngrx/signals/entities';

export const PlayerStore = signalStore(
  withEntities<Player>(),
  withComputed((store) => ({
    // Get all players as array
    allPlayers: computed(() => selectAllEntities(store)),

    // Get player by ID
    getPlayer: (id: string) => computed(() => selectEntity(store, id)),

    // Get top scorer
    topScorer: computed(() => {
      const players = selectAllEntities(store);
      return players.sort((a, b) => b.score - a.score)[0];
    }),
  })),
);
```

### Advanced Entity Operations

```typescript
import {
  addEntities,
  setEntities,
  setAllEntities,
  updateAllEntities,
  removeEntities,
} from '@ngrx/signals/entities';

// Add multiple
patchState(store, addEntities([player1, player2, player3]));

// Set all (replaces existing)
patchState(store, setAllEntities([player1, player2]));

// Update multiple
patchState(store,
  updateAllEntities({
    predicate: (p) => p.score < 10,
    changes: { score: 0 },
  })
);

// Remove multiple
patchState(store, removeEntities(['id1', 'id2']));
```

---

## CAH Specific Stores

### Game Store

**File**: `apps/frontend/src/app/store/game/game.store.ts`

```typescript
import { computed, inject } from '@angular/core';
import {
  signalStore,
  withState,
  withComputed,
  withMethods,
  withHooks,
  patchState,
} from '@ngrx/signals';
import { SupabaseService } from '../../services/supabase.service';
import { GameRealtimeService } from '../../services/game-realtime.service';

// Types
interface GameState {
  id: string | null;
  code: string | null;
  status: 'lobby' | 'in_progress' | 'completed';
  hostId: string | null;
  currentRoundId: string | null;
  currentCardCzarId: string | null;
  scoreLimit: number;
  isLoading: boolean;
  error: string | null;
}

const initialState: GameState = {
  id: null,
  code: null,
  status: 'lobby',
  hostId: null,
  currentRoundId: null,
  currentCardCzarId: null,
  scoreLimit: 10,
  isLoading: false,
  error: null,
};

export const GameStore = signalStore(
  { providedIn: 'root' },

  // State
  withState(initialState),

  // Injected services
  withProps(() => ({
    supabase: inject(SupabaseService),
    realtime: inject(GameRealtimeService),
  })),

  // Computed values
  withComputed((store) => ({
    isHost: computed(() => {
      const userId = store.supabase.getCurrentUserId();
      return store.hostId() === userId;
    }),

    isPlaying: computed(() => store.status() === 'in_progress'),

    isInLobby: computed(() => store.status() === 'lobby'),

    canStartGame: computed(() =>
      store.isHost() &&
      store.isInLobby() &&
      store.supabase.getPlayerCount(store.id()!) >= 3
    ),
  })),

  // Methods
  withMethods((store) => ({
    // Create new game
    async createGame() {
      patchState(store, { isLoading: true, error: null });

      try {
        const result = await store.supabase.functions.invoke('create-game', {
          body: { scoreLimit: store.scoreLimit() },
        });

        if (result.error) throw result.error;

        const game = result.data;
        patchState(store, {
          id: game.id,
          code: game.code,
          hostId: game.host_id,
          status: 'lobby',
          isLoading: false,
        });

        // Subscribe to realtime updates
        store.realtime.subscribeToGame(game.id);

        return game;
      } catch (error) {
        patchState(store, {
          error: error.message,
          isLoading: false,
        });
        throw error;
      }
    },

    // Join existing game
    async joinGame(gameCode: string) {
      patchState(store, { isLoading: true, error: null });

      try {
        const result = await store.supabase.functions.invoke('join-game', {
          body: { gameCode },
        });

        if (result.error) throw result.error;

        const game = result.data;
        patchState(store, {
          id: game.id,
          code: game.code,
          hostId: game.host_id,
          status: game.status,
          isLoading: false,
        });

        store.realtime.subscribeToGame(game.id);

        return game;
      } catch (error) {
        patchState(store, {
          error: error.message,
          isLoading: false,
        });
        throw error;
      }
    },

    // Start game (host only)
    async startGame() {
      if (!store.canStartGame()) {
        throw new Error('Cannot start game');
      }

      patchState(store, { isLoading: true });

      try {
        const result = await store.supabase.functions.invoke('start-game', {
          body: { gameId: store.id() },
        });

        if (result.error) throw result.error;

        patchState(store, {
          status: 'in_progress',
          currentRoundId: result.data.roundId,
          currentCardCzarId: result.data.cardCzarId,
          isLoading: false,
        });
      } catch (error) {
        patchState(store, {
          error: error.message,
          isLoading: false,
        });
        throw error;
      }
    },

    // Update from realtime event
    handleRealtimeUpdate(update: Partial<GameState>) {
      patchState(store, update);
    },

    // Reset store
    reset() {
      patchState(store, initialState);
    },
  })),

  // Lifecycle
  withHooks({
    onDestroy(store) {
      // Cleanup realtime subscription
      if (store.id()) {
        store.realtime.unsubscribe(store.id()!);
      }
    },
  }),
);
```

### Player Store

**File**: `apps/frontend/src/app/store/player/player.store.ts`

```typescript
import { computed } from '@angular/core';
import {
  signalStore,
  withState,
  withEntities,
  withComputed,
  withMethods,
  patchState,
} from '@ngrx/signals';
import {
  addEntity,
  addEntities,
  updateEntity,
  removeEntity,
  selectAllEntities,
} from '@ngrx/signals/entities';

interface Player {
  id: string;
  sessionId: string;
  name: string;
  score: number;
  isCardCzar: boolean;
  isOnline: boolean;
}

export const PlayerStore = signalStore(
  { providedIn: 'root' },

  withEntities<Player>(),

  withComputed((store) => ({
    // All players sorted by score
    playersByScore: computed(() =>
      selectAllEntities(store).sort((a, b) => b.score - a.score)
    ),

    // Current card czar
    cardCzar: computed(() =>
      selectAllEntities(store).find(p => p.isCardCzar)
    ),

    // Online players
    onlinePlayers: computed(() =>
      selectAllEntities(store).filter(p => p.isOnline)
    ),

    // Player count
    playerCount: computed(() => store.ids().length),
  })),

  withMethods((store) => ({
    addPlayer(player: Player) {
      patchState(store, addEntity(player));
    },

    addPlayers(players: Player[]) {
      patchState(store, addEntities(players));
    },

    updateScore(playerId: string, points: number) {
      patchState(store,
        updateEntity({
          id: playerId,
          changes: (player) => ({
            score: player.score + points,
          }),
        })
      );
    },

    setCardCzar(playerId: string) {
      // Clear previous czar
      patchState(store,
        updateAllEntities({
          predicate: (p) => p.isCardCzar,
          changes: { isCardCzar: false },
        })
      );

      // Set new czar
      patchState(store,
        updateEntity({
          id: playerId,
          changes: { isCardCzar: true },
        })
      );
    },

    updateOnlineStatus(playerId: string, isOnline: boolean) {
      patchState(store,
        updateEntity({
          id: playerId,
          changes: { isOnline },
        })
      );
    },

    removePlayer(playerId: string) {
      patchState(store, removeEntity(playerId));
    },
  })),
);
```

### Card Store

**File**: `apps/frontend/src/app/store/card/card.store.ts`

```typescript
import { computed, inject } from '@angular/core';
import {
  signalStore,
  withState,
  withEntities,
  withComputed,
  withMethods,
  patchState,
} from '@ngrx/signals';
import { addEntities, removeEntities } from '@ngrx/signals/entities';

interface Card {
  id: string;
  text: string;
  type: 'black' | 'white';
  pick?: number; // For black cards
}

interface CardState {
  selectedCardIds: string[];
  isSubmitting: boolean;
}

export const CardStore = signalStore(
  { providedIn: 'root' },

  withEntities<Card>(),
  withState<CardState>({
    selectedCardIds: [],
    isSubmitting: false,
  }),

  withComputed((store) => ({
    // Player's hand (white cards)
    hand: computed(() =>
      store.entities().filter(c => c.type === 'white')
    ),

    // Selected cards
    selectedCards: computed(() =>
      store.entities().filter(c =>
        store.selectedCardIds().includes(c.id)
      )
    ),

    // Can submit response
    canSubmit: computed(() => {
      const blackCard = store.entities().find(c => c.type === 'black');
      const pickCount = blackCard?.pick || 1;
      return store.selectedCardIds().length === pickCount;
    }),
  })),

  withMethods((store) => ({
    setHand(cards: Card[]) {
      patchState(store, addEntities(cards));
    },

    toggleCardSelection(cardId: string) {
      const selected = store.selectedCardIds();
      const isSelected = selected.includes(cardId);

      patchState(store, {
        selectedCardIds: isSelected
          ? selected.filter(id => id !== cardId)
          : [...selected, cardId],
      });
    },

    clearSelection() {
      patchState(store, { selectedCardIds: [] });
    },

    async submitResponse(roundId: string) {
      if (!store.canSubmit()) return;

      patchState(store, { isSubmitting: true });

      try {
        // Call Edge Function
        // ...

        // Remove submitted cards from hand
        patchState(store,
          removeEntities(store.selectedCardIds())
        );

        patchState(store, {
          selectedCardIds: [],
          isSubmitting: false,
        });
      } catch (error) {
        patchState(store, { isSubmitting: false });
        throw error;
      }
    },
  })),
);
```

---

## Best Practices

### 1. Store Granularity

**Good**: One store per domain
```typescript
GameStore     // Game session state
PlayerStore   // Players in game
CardStore     // Player's cards
RoundStore    // Current round state
```

**Bad**: Single monolithic store
```typescript
AppStore      // Everything mixed together ❌
```

### 2. Computed vs Methods

**Use Computed for**: Derived state
```typescript
withComputed((store) => ({
  playerCount: computed(() => store.players().length), ✅
}))
```

**Use Methods for**: Actions
```typescript
withMethods((store) => ({
  addPlayer(player: Player) { ✅
    patchState(store, { players: [...store.players(), player] });
  },
}))
```

### 3. Async Operations

Always use try/catch and loading states:
```typescript
async loadGame(gameId: string) {
  patchState(store, { isLoading: true, error: null });

  try {
    const game = await this.supabase.getGame(gameId);
    patchState(store, { ...game, isLoading: false });
  } catch (error) {
    patchState(store, {
      error: error.message,
      isLoading: false,
    });
    throw error; // Re-throw for component handling
  }
}
```

### 4. Optimistic Updates

Update UI immediately, rollback on error:
```typescript
async updateScore(playerId: string, points: number) {
  const oldScore = store.getPlayer(playerId)!.score;

  // Optimistic update
  patchState(store,
    updateEntity({
      id: playerId,
      changes: { score: oldScore + points },
    })
  );

  try {
    await supabase.updateScore(playerId, points);
  } catch (error) {
    // Rollback
    patchState(store,
      updateEntity({
        id: playerId,
        changes: { score: oldScore },
      })
    );
    throw error;
  }
}
```

### 5. Don't Mutate State

**Bad**:
```typescript
const players = store.players();
players.push(newPlayer); ❌
patchState(store, { players });
```

**Good**:
```typescript
patchState(store, {
  players: [...store.players(), newPlayer], ✅
});
```

### 6. Use Type Safety

```typescript
// Define strict types
interface GameState {
  status: 'lobby' | 'playing' | 'finished'; // ✅ Union type
  scoreLimit: number;
}

// Not loose types
interface GameState {
  status: string; // ❌ Too loose
  scoreLimit: any; // ❌ No type safety
}
```

---

## Testing

### Unit Testing Stores

```typescript
import { TestBed } from '@angular/core/testing';
import { GameStore } from './game.store';

describe('GameStore', () => {
  let store: InstanceType<typeof GameStore>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [GameStore],
    });
    store = TestBed.inject(GameStore);
  });

  it('should initialize with default state', () => {
    expect(store.id()).toBeNull();
    expect(store.status()).toBe('lobby');
  });

  it('should update game status', () => {
    store.updateStatus('in_progress');
    expect(store.status()).toBe('in_progress');
  });

  it('should compute isPlaying correctly', () => {
    expect(store.isPlaying()).toBe(false);
    store.updateStatus('in_progress');
    expect(store.isPlaying()).toBe(true);
  });
});
```

### Testing Async Methods

```typescript
it('should create game successfully', async () => {
  const mockGame = { id: '123', code: 'ABC123' };
  spyOn(store.supabase.functions, 'invoke').and.returnValue(
    Promise.resolve({ data: mockGame, error: null })
  );

  await store.createGame();

  expect(store.id()).toBe('123');
  expect(store.code()).toBe('ABC123');
  expect(store.isLoading()).toBe(false);
});

it('should handle errors', async () => {
  spyOn(store.supabase.functions, 'invoke').and.returnValue(
    Promise.resolve({ data: null, error: { message: 'Failed' } })
  );

  await expectAsync(store.createGame()).toBeRejected();
  expect(store.error()).toBe('Failed');
  expect(store.isLoading()).toBe(false);
});
```

---

## Migration from ComponentStore

If you're coming from NgRx ComponentStore:

| ComponentStore | SignalStore |
|---------------|-------------|
| `this.state$` | `store.state()` |
| `this.select(s => s.count)` | `computed(() => store.count())` |
| `this.updater((state, value) => ...)` | `patchState(store, { ... })` |
| `this.effect((value$) => ...)` | `withMethods` + async/await |
| `provideComponentStore(Store)` | `providedIn: 'root'` or `providers: [Store]` |

---

## Advanced Topics

### Custom Store Features

Create reusable store features:

```typescript
// with-loading.feature.ts
export function withLoading() {
  return signalStoreFeature(
    withState({ isLoading: false }),
    withMethods((store) => ({
      setLoading(isLoading: boolean) {
        patchState(store, { isLoading });
      },
    }))
  );
}

// Usage
export const GameStore = signalStore(
  withState(initialState),
  withLoading(), // ✅ Reusable feature
);
```

### RxJS Interop

For working with observables:

```typescript
import { rxMethod } from '@ngrx/signals/rxjs-interop';
import { pipe, switchMap, tap } from 'rxjs';

export const GameStore = signalStore(
  withMethods((store) => ({
    // Convert observable to signal store method
    loadGame: rxMethod<string>(
      pipe(
        tap(() => patchState(store, { isLoading: true })),
        switchMap((gameId) => supabase.getGame(gameId)),
        tap((game) => patchState(store, { ...game, isLoading: false })),
      )
    ),
  })),
);
```

---

## Resources

- [Official NgRx SignalStore Docs](https://ngrx.io/guide/signals/signal-store)
- [NgRx v20 Announcement](https://dev.to/ngrx/announcing-ngrx-v20-the-power-of-events-enhanced-dx-and-a-mature-signalstore-2fdm)
- [Angular Signals Guide](https://angular.dev/guide/signals)
- [SignalStore Examples](https://github.com/ngrx/platform/tree/main/modules/signals)

---

**Last Updated**: 2025-10-20
**NgRx Version**: 20.0.1
**Angular Version**: 20.3.4
