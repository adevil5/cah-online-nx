import {
  ChangeDetectionStrategy,
  Component,
  Input,
  OnInit,
} from '@angular/core';
import { CommonModule } from '@angular/common';
import { Profile } from '../../../game/models/profile.model';
import { AuthSession } from '@supabase/supabase-js';
import { SupabaseService } from '../../../game/services/supabase.service';
import { FormBuilder } from '@angular/forms';

@Component({
  selector: 'cah-account',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './account.component.html',
  styles: [],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class AccountComponent implements OnInit {
  loading = false;
  profile!: Profile;

  @Input()
  session!: AuthSession;

  updateProfileForm = this.formBuilder.group({
    username: '',
    website: '',
    avatarUrl: '',
  });

  constructor(
    private readonly supabase: SupabaseService,
    private formBuilder: FormBuilder
  ) {}

  async ngOnInit(): Promise<void> {
    await this.getProfile();

    const { username, website, avatarUrl } = this.profile;
    this.updateProfileForm.patchValue({
      username: username,
      website: website,
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
      } = await this.supabase.profile(user);

      if (error && status !== 406) {
        throw error;
      }

      if (profile) {
        const p: Profile = {
          id: user.id,
          updatedAt: null,
          username: profile?.username ?? null,
          fullName: null,
          avatarUrl: profile?.avatar_url ?? null,
          website: profile?.website ?? null,
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
      const website = this.updateProfileForm.value.website as string;
      const avatar_url = this.updateProfileForm.value.avatarUrl as string;

      const { error } = await this.supabase.updateProfile({
        id: user.id,
        username,
        website,
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
    await this.supabase.signOut();
  }
}
