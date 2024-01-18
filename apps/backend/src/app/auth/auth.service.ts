import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { SupabaseService } from '../database/supabase.service';

@Injectable()
export class AuthService {
  constructor(private supabase: SupabaseService) {}

  async registerUser(email: string, password: string) {
    const { data, error } = await this.supabase.auth.signUp({
      email,
      password,
    });

    if (error) {
      throw new HttpException(error.message, HttpStatus.BAD_REQUEST);
    }
    return data.user;
  }

  async loginUser(email: string, password: string) {
    const { data, error } = await this.supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) {
      throw new HttpException(error.message, HttpStatus.BAD_REQUEST);
    }
    return { user: data.user, session: data.session };
  }

  async logoutUser(token: string) {
    const { error } = await this.supabase.auth.admin.signOut(token);

    if (error) throw new Error(error.message);
    return { message: 'Logged out successfully' };
  }
}
