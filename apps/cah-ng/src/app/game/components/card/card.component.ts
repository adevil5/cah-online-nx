import { ChangeDetectionStrategy, Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Card } from '../../models/card.model';
import { UnderscoreExpansionPipe } from '../../pipes/underscore-expansion.pipe';

@Component({
  selector: 'cah-card',
  standalone: true,
  imports: [CommonModule, UnderscoreExpansionPipe],
  templateUrl: './card.component.html',
  styles: [],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class CardComponent {
  @Input({ required: true }) card!: Card;
}
