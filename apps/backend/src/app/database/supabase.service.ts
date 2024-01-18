import { Injectable } from '@nestjs/common';
import { SupabaseClient } from '@supabase/supabase-js';

import { Database } from '@cah-online-nx/supabase';

@Injectable()
export class SupabaseService extends SupabaseClient<Database> {
  constructor() {
    super(process.env.SUPABASE_URL ?? '', process.env.SUPABASE_KEY ?? '');
  }
}
