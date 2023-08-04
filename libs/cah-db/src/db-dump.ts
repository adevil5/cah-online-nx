import { exec } from 'child_process';
import { getTimestamp } from './timestamp';

export const dbDump = async (dbUrl: string, filePath: string) => {
  return new Promise((resolve, reject) => {
    exec(
      `supabase db dump --db-url ${dbUrl} -f ${filePath}`,
      (err, stdout, stderr) => {
        if (err) {
          reject(err);
        }
        if (stderr) {
          reject(stderr);
        }
        resolve(stdout);
      }
    );
  });
};

const timestamp = getTimestamp();

if (process.env['DATABASE_URL']) {
  dbDump(
    process.env['DATABASE_URL'],
    `supabase/backups/${timestamp}_backup.sql`
  ).catch((error) => console.error(error));
} else {
  console.error('DATABASE_URL not set');
}
