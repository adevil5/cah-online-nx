import { Injectable } from '@angular/core';
import {
  AuthChangeEvent,
  AuthSession,
  createClient,
  Session,
  User,
} from '@supabase/supabase-js';
import { environment } from '../../../environments/environment';
import { Database } from '../../../generated/supabase';
import { Profile } from '../../game/models/profile.model';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  private supabase = createClient<Database>(
    environment.supabaseUrl,
    environment.supabasePublicAnonKey
  );
  private _session: AuthSession | null = null;

  get session() {
    this.supabase.auth.getSession().then(({ data }) => {
      this._session = data.session;
    });
    return this._session;
  }

  profile(user: User) {
    return this.supabase
      .from('profile')
      .select(`username, avatar_url`)
      .eq('id', user.id)
      .single();
  }

  authChanges(
    callback: (event: AuthChangeEvent, session: Session | null) => void
  ) {
    return this.supabase.auth.onAuthStateChange(callback);
  }

  signUp(email: string, password: string) {
    return this.supabase.auth.signUp({
      email,
      password,
    });
  }

  signIn(email: string, password: string) {
    return this.supabase.auth.signInWithPassword({
      email,
      password,
    });
  }

  // signInWithGoogle() {
  //   return this.supabase.auth.signInWithOAuth({ provider: 'google' });
  // }

  signOut() {
    return this.supabase.auth.signOut();
  }

  updateProfile(profile: Partial<Profile> & { id: string }) {
    const update = {
      id: profile.id,
      updated_at: new Date().toUTCString(),
      username: profile.username,
      avatar_url: profile.avatarUrl,
    };

    return this.supabase.from('profile').upsert(update);
  }

  downLoadImage(path: string) {
    return this.supabase.storage.from('avatars').download(path);
  }

  uploadAvatar(filePath: string, file: File) {
    return this.supabase.storage.from('avatars').upload(filePath, file);
  }
}
