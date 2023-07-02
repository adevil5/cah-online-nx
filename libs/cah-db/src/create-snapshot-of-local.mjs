import { exec } from 'child_process';

console.log('========== Create Snapshot ==========');

const PGPASSWORD = 'postgres';

const date = new Date();
const year = date.getFullYear(); // gets the year as a 4 digit number
const month = String(date.getMonth() + 1).padStart(2, '0'); // gets the month (0-11, so we add 1), converts it to a string, and pads it with a 0 if necessary
const day = String(date.getDate()).padStart(2, '0'); // gets the day of the month (1-31), converts it to a string, and pads it with a 0 if necessary
const hours = String(date.getHours()).padStart(2, '0'); // gets the hours (0-23), converts it to a string, and pads it with a 0 if necessary
const minutes = String(date.getMinutes()).padStart(2, '0'); // gets the minutes (0-59), converts it to a string, and pads it with a 0 if necessary
const timestamp = `${year}${month}${day}${hours}${minutes}`;

const dumpCommand = `pg_dump -h localhost -p 54322 -U postgres -w -F p -b -v -f libs/cah-db/supabase/snapshots/local/${timestamp}.sql --data-only -t public.card`;

exec(dumpCommand, { env: { PGPASSWORD } }, (error, stdout, stderr) => {
  if (error) {
    console.error(`exec error: ${error}`);
    return;
  }

  console.log(`stdout: ${stdout}`);
  console.error(`stderr: ${stderr}`);
});
