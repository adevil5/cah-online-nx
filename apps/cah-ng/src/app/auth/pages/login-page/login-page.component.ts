import {
  ChangeDetectionStrategy,
  Component,
  OnInit,
  computed,
  inject,
  signal,
} from '@angular/core';
import { CommonModule, NgIf } from '@angular/common';
import { AuthComponent } from '../../components/auth/auth.component';
import { AuthSession } from '@supabase/supabase-js';
import { AuthService } from '../../services/auth.service';
import { AccountComponent } from '../../components/account/account.component';

@Component({
  selector: 'cah-login-page',
  standalone: true,
  imports: [CommonModule, NgIf, AuthComponent, AccountComponent],
  templateUrl: './login-page.component.html',
  styles: [],
})
export class LoginPageComponent implements OnInit {
  private authService = inject(AuthService);
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
