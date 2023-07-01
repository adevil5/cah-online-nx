import * as dotenv from 'dotenv';
import { execSync } from 'child_process';

// Load environment variables from .env file
dotenv.config();

// Run the command
const supabaseProjectRef = process.env['SUPABASE_PROJECT_REF'];
const command = `npx supabase gen types typescript --project-id "${supabaseProjectRef}" --schema public > packages/cah-online-ng/src/generated/supabase.ts`;

try {
  execSync(command, { stdio: 'inherit' });
  console.log('Command executed successfully.');
} catch (error) {
  console.error('An error occurred while executing the command:', error);
}
