import {
  ChangeDetectionStrategy,
  Component,
  Input,
  OnInit,
  inject,
} from '@angular/core';
import { CommonModule } from '@angular/common';
import { Profile } from '../../../game/models/profile.model';
import { AuthSession } from '@supabase/supabase-js';
import { AuthService } from '../../services/auth.service';
import { FormBuilder, ReactiveFormsModule } from '@angular/forms';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';

@Component({
  selector: 'cah-account',
  standalone: true,
  imports: [
    CommonModule,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
  ],
  templateUrl: './account.component.html',
  styles: [],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class AccountComponent implements OnInit {
  private authService = inject(AuthService);
  private formBuilder = inject(FormBuilder);

  loading = false;
  profile!: Profile;

  @Input({ required: true }) session!: AuthSession;

  updateProfileForm = this.formBuilder.group({
    username: '',
    avatarUrl: '',
  });

  async ngOnInit(): Promise<void> {
    await this.getProfile();

    const { username, avatarUrl } = this.profile;
    this.updateProfileForm.patchValue({
      username: username,
      avatarUrl: avatarUrl,
    });
  }

  async getProfile() {
    try {
      this.loading = true;
      const { user } = this.session;
      const {
        data: profile,
        error,
        status,
      } = await this.authService.profile(user);

      if (error && status !== 406) {
        throw error;
      }

      if (profile) {
        const p: Profile = {
          id: user.id,
          updatedAt: null,
          username: profile?.username ?? null,
          avatarUrl: profile?.avatar_url ?? null,
        };
        this.profile = p;
      }
    } catch (error) {
      if (error instanceof Error) {
        alert(error.message);
      }
    } finally {
      this.loading = false;
    }
  }

  async updateProfile(): Promise<void> {
    try {
      this.loading = true;
      const { user } = this.session;

      const username = this.updateProfileForm.value.username as string;
      const avatar_url = this.updateProfileForm.value.avatarUrl as string;

      const { error } = await this.authService.updateProfile({
        id: user.id,
        username,
        avatarUrl: avatar_url,
      });
      if (error) throw error;
    } catch (error) {
      if (error instanceof Error) {
        alert(error.message);
      }
    } finally {
      this.loading = false;
    }
  }

  async signOut() {
    await this.authService.signOut();
  }
}
