import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';

import { HeaderComponent } from './core/components/header/header.component';

@Component({
  standalone: true,
  imports: [RouterModule, HeaderComponent],
  selector: 'cah-root',
  templateUrl: './app.component.html',
  styles: [
    `
      .page-height {
        height: calc(100dvh - 64px);
      }
    `,
  ],
})
export class AppComponent {}
