import { Injectable } from '@angular/core';
import { gameMachine } from '../machines/game.machine';
import { interpret } from 'xstate';
import { from, map } from 'rxjs';
import { toSignal } from '@angular/core/rxjs-interop';

@Injectable({
  providedIn: 'root',
})
export class GameMachineService {
  private machineService = interpret(
    gameMachine.withConfig({
      actions: {
        assignBlackCard: (context, event) => {
          console.log('assignBlackCard', context, event);
        },
        playCard: (context, event) => {
          console.log('playCard', context, event);
        },
        chooseWinner: (context, event) => {
          console.log('chooseWinner', context, event);
        },
      },
      services: {
        dealCards: (context, event) => {
          console.log('dealCards', context, event);
          return Promise.resolve();
        },
      },
    })
  ).start();

  private state$ = from(this.machineService);

  data = toSignal(this.state$.pipe(map((state) => state.context)), {
    initialValue: this.machineService.initialState.context,
  });
}
