import select from '@inquirer/select';
import { execSync } from 'child_process';
import { readdirSync } from 'fs';
import path from 'path';

async function restoreSnapshotToLocalDb() {
  console.log('======== Restore Snapshot =========');

  const envSelectConfig = [
    {
      message: 'select an environment',
      choices: ['local', 'prod'],
      default: 'local',
    },
  ];

  const envChoice = await select(envSelectConfig);

  const snapshotsPath = path.join(
    process.cwd(),
    `./supabase/snapshots/${envChoice}`
  );
  const snapshots = readdirSync(snapshotsPath);

  const snapshotSelectConfig = [
    {
      message: 'select a snapshot to restore',
      choices: snapshots,
    },
  ];

  const snapshot = await select(snapshotSelectConfig);
  console.log(snapshot);

  console.log('clearing current data');
  execSync(
    'PGPASSWORD=postgres psql -U postgres -h 127.0.0.1 -p 54322 -f libs/cah-db/supabase/clear-db.sql'
  );
  console.log(`Restoring snapshot ${snapshot}...`);
  execSync(
    `PGPASSWORD=postgres psql -U postgres -h 127.0.0.1 -p 54322 -f libs/cah-db/supabase/snapshots/${envChoice}/${snapshot}`
  );
}

restoreSnapshotToLocalDb();
