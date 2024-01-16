import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { NxWelcomeComponent } from './nx-welcome.component';

@Component({
  standalone: true,
  imports: [NxWelcomeComponent, RouterModule],
  selector: 'cah-root',
  template: `<cah-nx-welcome></cah-nx-welcome> <router-outlet></router-outlet>`,
  styles: ``,
})
export class AppComponent {
  title = 'frontend';
}
