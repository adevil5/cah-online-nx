import { ChangeDetectionStrategy, Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Card } from '../../models/card.model';

@Component({
  selector: 'cah-card',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './card.component.html',
  styles: [],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class CardComponent {
  @Input({ required: true }) card!: Card;
}
