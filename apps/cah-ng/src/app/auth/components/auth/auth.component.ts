import { ChangeDetectionStrategy, Component, inject } from '@angular/core';
import { CommonModule, NgIf } from '@angular/common';
import { FormBuilder, ReactiveFormsModule } from '@angular/forms';
import { AuthService } from '../../services/auth.service';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';

@Component({
  selector: 'cah-auth',
  standalone: true,
  imports: [
    CommonModule,
    NgIf,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
  ],
  templateUrl: './auth.component.html',
  styles: [],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class AuthComponent {
  loading = false;

  signInOrSignUp: 'signIn' | 'signUp' = 'signIn';

  private authService = inject(AuthService);
  private formBuilder = inject(FormBuilder);

  signInForm = this.formBuilder.group({
    email: '',
    password: '',
  });

  async onSubmit(): Promise<void> {
    try {
      this.loading = true;
      const email = this.signInForm.value.email as string;
      const password = this.signInForm.value.password as string;
      if (this.signInOrSignUp === 'signUp') {
        const { error } = await this.authService.signUp(email, password);
        if (error) {
          throw error;
        }
      } else {
        const { error } = await this.authService.signIn(email, password);
        if (error) {
          throw error;
        }
      }
    } catch (error) {
      if (error instanceof Error) {
        alert(error.message);
      }
    } finally {
      this.signInForm.reset();
      this.loading = false;
    }
  }
}
