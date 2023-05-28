import { ChangeDetectionStrategy, Component, inject } from '@angular/core';
import { toSignal } from '@angular/core/rxjs-interop';
import { CommonModule } from '@angular/common';
import { GameService } from '../../services/game.service';
import { from } from 'rxjs';
import { CardComponent } from '../card/card.component';

@Component({
  selector: 'cah-user-hand',
  standalone: true,
  imports: [CardComponent, CommonModule],
  templateUrl: './user-hand.component.html',
  styles: [],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class UserHandComponent {
  gameService = inject(GameService);
  baseCardPack = toSignal(from(this.gameService.drawRandomWhiteCards(10)), {
    initialValue: [],
  });
}
