import { createMachine } from 'xstate';
import { GameProfile } from '../models/profile.model';
import { GameRoundDisplay } from '../models/game-round.model';
import { Card } from '../models/card.model';
import {
  UserGameRoundCard as UserGameRoundCard,
  UserGameRoundCardDisplay,
} from '../models/user-game-round-card.model';

export interface GameMachineContext {
  gameId: string | null;
  user: GameProfile;
  hostUser: GameProfile;
  users: GameProfile[];
  gameRound: GameRoundDisplay;
  userHand: Card[];
  userGameRoundCards: UserGameRoundCardDisplay[];
}

export type GameMachineEvent =
  | { type: 'START_GAME'; users: GameProfile[] }
  | { type: 'ENABLE_AUTOPLAY'; enableAutoplay: boolean }
  | { type: 'ENABLE_GHOST_PLAYER'; enableGhostPlayer: boolean }
  | { type: 'DEAL_CARDS' }
  | { type: 'PLAY_CARDS'; cards: Card[] }
  | { type: 'END_GAME' }
  | { type: 'FINISH_ROUND' }
  | { type: 'CHOOSE_WINNER'; winningUserGameId: string }
  | { type: 'NEXT_ROUND' };

export const gameMachine = createMachine(
  {
    /** @xstate-layout N4IgpgJg5mDOIC5RQIYFswFkUGMAWAlgHZgDEAogHICCAQgDLkD61AqgCoDyACvdQJoBtAAwBdRKAAOAe1gEALgWlEJIAB6IAbNoB0mgJwBWTQGYAjPrMAOAOw39JgDQgAnojPD9OowBYzPgCYbYQD-YWETAF9I51QMbHxiMio6RiYAcQAJTgBldiZeAXIAJRFxJBAZOUVlVQ0EQ30rHWErAM1Ggw9DH2c3BDMA6Nj0LFxCEh0AdxQFYihSPOpi-PTqTHIy1Sq52or6wytm-VbhHwNDCwC-PsQTWx0fQxMbU1Dwm2MfYZA4scTJgAnaQAVyIEBy8hQgMURAWEGUYB0xAAbtIANZIv4JCZI4FgiFQmHzBCo6Q4FA1IhlLYVHZUuruYSNHQmSzaHw+EwBNqtW4IEyaHw6I72LmGAJBSztH7Y8ZJHT48GQ6GwhZgQHAwE6SQAG0pADNpIC0Do5QC8aDlUS1aSiGiKVSaWJtrJdip9kyWWyzByuTyAnzXHdfToetZPBY2cEzLLRjiFUqINx9S55qRCvwmABhZYAERytKkboZnoGJhMwqswhsPmEmnsgtMvWDCD8JlZT2emismgshxscfi8qBVuTqfTADEAJKUac5TJMYqcViUPNFyolpQe0D1bpeH1+7m8qz8y6GHT2fQ2F6fHz6AyaIf-XGKsfZgBe0OzeGkbrhpDZtkuTMAA6rOlAlBu9LboyCABMYOi+gETYmBEViXC2-RocKrw2G0oQmIYrR4c+CajgSnAohqpCQQAGvky6ruuLp0luey7oghzHKc5xGFcNythWwqaMynyCr21ZWEYZEjpalHUYCFBrhk6ybKxxbVLBZbcd4vEXAJZj8jyHbWNWNjXAETRcvo3w-EQ0gQHAqjmrirpaRx6iIAAtEZrYWMKJxtBhdaBNW9ayRa0yzGq7nunB5w2GGPhWBWDZmNyNaGPy9xJUYLxvB4WVCpFr5JiqxJwnFpacQgGEXpK+gIZyGFWL6ThCSljzBB0Pi1rYwRDDEvzxnJb4EimKBplVbEeTuXnli83iVrYmG2GYhg2GeoZWdet49A+D6lYm75foCP5-nIM2afFZZ9dtwhhs2m09D04lRMNrknQpGrVdptVPIFtZsphfjaJ8OU8mGgqtP25jdIOn2jVFYDgpAf2efU9U6I1zUpYc7XGW0jytDy9b1rWnhPkjw4o5qxoY-Ne4VnlK2fP462bTl-g4+01xshT-HU9EQA */
    id: 'gameMachine',
    tsTypes: {} as import('./game.machine.typegen').Typegen0,
    schema: {
      context: {} as GameMachineContext,
      events: {} as GameMachineEvent,
    },
    initial: 'waiting',
    on: {
      ENABLE_AUTOPLAY: {
        actions: 'enableAutoplay',
      },
      ENABLE_GHOST_PLAYER: {
        cond: 'isHostUser',
        actions: 'enableGhostPlayer',
      },
    },
    states: {
      waiting: {
        on: {
          START_GAME: {
            cond: 'isHostUser',
            target: 'roundStarting',
          },
        },
      },
      roundStarting: {
        invoke: {
          src: 'startRound',
          onDone: {
            target: 'roundPlaying',
            actions: 'setRound',
          },
          onError: {
            target: 'error',
          },
        },
      },
      roundPlaying: {
        on: {
          PLAY_CARDS: {
            actions: 'playCards',
          },
          FINISH_ROUND: {
            cond: 'isCzarUser',
            target: 'roundCzarChoosing',
          },
        },
      },
      roundCzarChoosing: {
        on: {
          CHOOSE_WINNER: {
            actions: 'chooseWinner',
            target: 'roundOver',
          },
        },
      },
      roundOver: {
        on: {
          NEXT_ROUND: 'roundStarting',
          END_GAME: 'ended',
        },
      },
      ended: {
        type: 'final',
      },
      error: {
        type: 'final',
      },
    },
  },
  {
    guards: {
      isHostUser: (context: GameMachineContext) => {
        return context.user.userGameId === context.hostUser.userGameId;
      },
      isCzarUser: (context: GameMachineContext) => {
        return context.user.userGameId === context.gameRound.czar.userGameId;
      },
    },
  }
);
