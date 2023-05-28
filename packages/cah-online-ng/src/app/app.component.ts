import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { UserHandComponent } from './game/components/user-hand/user-hand.component';

@Component({
  standalone: true,
  imports: [UserHandComponent, RouterModule],
  selector: 'cah-root',
  templateUrl: './app.component.html',
  styles: [],
})
export class AppComponent {}
