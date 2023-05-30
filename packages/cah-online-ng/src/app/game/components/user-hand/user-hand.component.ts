import { ChangeDetectionStrategy, Component, inject } from '@angular/core';
import { toSignal } from '@angular/core/rxjs-interop';
import { CommonModule } from '@angular/common';
import { GameDatabaseService } from '../../services/game-database.service';
import { from } from 'rxjs';
import { CardComponent } from '../card/card.component';

@Component({
  selector: 'cah-user-hand',
  standalone: true,
  imports: [CardComponent, CommonModule],
  templateUrl: './user-hand.component.html',
  styles: [
    `
      :host {
        display: block;
      }
    `,
  ],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class UserHandComponent {
  gameService = inject(GameDatabaseService);
  randomWhiteCards = toSignal(from(this.gameService.drawRandomCards(3, true)), {
    initialValue: [],
  });
  randomBlackCards = toSignal(
    from(this.gameService.drawRandomCards(3, false)),
    {
      initialValue: [],
    }
  );
}
