import { ChangeDetectionStrategy, Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { UserHandComponent } from '../../components/user-hand/user-hand.component';

@Component({
  selector: 'cah-game-page',
  standalone: true,
  imports: [CommonModule, UserHandComponent],
  templateUrl: './game-page.component.html',
  styles: [
    `
      :host {
        display: block;
      }
    `,
  ],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class GamePageComponent {}
