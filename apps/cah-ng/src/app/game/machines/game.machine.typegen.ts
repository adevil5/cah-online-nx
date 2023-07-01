// This file was automatically generated. Edits will be overwritten

export interface Typegen0 {
  '@@xstate/typegen': true;
  internalEvents: {
    'done.invoke.gameMachine.roundStarting:invocation[0]': {
      type: 'done.invoke.gameMachine.roundStarting:invocation[0]';
      data: unknown;
      __tip: 'See the XState TS docs to learn how to strongly type this.';
    };
    'xstate.init': { type: 'xstate.init' };
  };
  invokeSrcNameMap: {
    startRound: 'done.invoke.gameMachine.roundStarting:invocation[0]';
  };
  missingImplementations: {
    actions:
      | 'chooseWinner'
      | 'enableAutoplay'
      | 'enableGhostPlayer'
      | 'playCards'
      | 'setRound';
    delays: never;
    guards: never;
    services: 'startRound';
  };
  eventsCausingActions: {
    chooseWinner: 'CHOOSE_WINNER';
    enableAutoplay: 'ENABLE_AUTOPLAY';
    enableGhostPlayer: 'ENABLE_GHOST_PLAYER';
    playCards: 'PLAY_CARDS';
    setRound: 'done.invoke.gameMachine.roundStarting:invocation[0]';
  };
  eventsCausingDelays: {};
  eventsCausingGuards: {
    isCzarUser: 'FINISH_ROUND';
    isHostUser: 'ENABLE_GHOST_PLAYER' | 'START_GAME';
  };
  eventsCausingServices: {
    startRound: 'NEXT_ROUND' | 'START_GAME';
  };
  matchesStates:
    | 'ended'
    | 'error'
    | 'roundCzarChoosing'
    | 'roundOver'
    | 'roundPlaying'
    | 'roundStarting'
    | 'waiting';
  tags: never;
}
