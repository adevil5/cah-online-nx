import {
  ChangeDetectionStrategy,
  Component,
  Input,
  OnInit,
  inject,
  effect,
} from '@angular/core';
import { CommonModule } from '@angular/common';
import { Profile } from '../../../game/models/profile.model';
import { AuthSession } from '@supabase/supabase-js';
import { AuthService } from '../../services/auth.service';
import { FormBuilder, FormControl, ReactiveFormsModule } from '@angular/forms';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { AvatarComponent } from '../avatar/avatar.component';
import { toSignal } from '@angular/core/rxjs-interop';

@Component({
  selector: 'cah-account',
  standalone: true,
  imports: [
    CommonModule,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
    AvatarComponent,
  ],
  templateUrl: './account.component.html',
  styles: [],
})
export class AccountComponent implements OnInit {
  private authService = inject(AuthService);
  private formBuilder = inject(FormBuilder);

  loading = false;
  profile!: Profile;

  @Input({ required: true }) session!: AuthSession;

  avatarUrlFc = new FormControl('');
  updateProfileForm = this.formBuilder.group({
    username: '',
    avatarUrl: this.avatarUrlFc,
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

  avatarUrlSignal = toSignal(this.avatarUrlFc.valueChanges, {
    initialValue: null,
  });

  effectFn = effect(() => {
    console.log('avatarUrlSignal', this.avatarUrlSignal());
  });

  async updateAvatar(event: string): Promise<void> {
    this.updateProfileForm.patchValue({
      avatarUrl: event,
    });
    await this.updateProfile();
  }
}
