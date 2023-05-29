import { Component, OnInit, computed, inject, signal } from '@angular/core';
import { RouterModule } from '@angular/router';
import { UserHandComponent } from './game/components/user-hand/user-hand.component';
import { AccountComponent } from './auth/components/account/account.component';
import { AuthComponent } from './auth/components/auth/auth.component';
import { AuthService } from './auth/services/auth.service';
import { AuthSession } from '@supabase/supabase-js';
import { NgIf } from '@angular/common';
import { HeaderComponent } from './core/components/header/header.component';

@Component({
  standalone: true,
  imports: [
    RouterModule,
    NgIf,
    AuthComponent,
    AccountComponent,
    UserHandComponent,
    HeaderComponent,
  ],
  selector: 'cah-root',
  templateUrl: './app.component.html',
  styles: [],
})
export class AppComponent implements OnInit {
  authService = inject(AuthService);
  session = signal(this.authService.session);
  sessionNotNull = computed(() =>
    this.session() !== null
      ? (this.session() as AuthSession)
      : ({} as AuthSession)
  );

  ngOnInit(): void {
    this.authService.authChanges((_, session) => {
      this.session.set(session);
    });
  }
}
