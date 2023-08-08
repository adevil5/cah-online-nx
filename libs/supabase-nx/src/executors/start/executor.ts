import { promisify } from 'util';
import { StartExecutorSchema } from './schema';
import { ExecutorContext } from '@nx/devkit';
import { exec } from 'child_process';

export default async function runExecutor(
  _options: StartExecutorSchema,
  context: ExecutorContext
) {
  const projectRoot = context.workspace.projects[context.projectName].root;

  try {
    const { stdout, stderr } = await promisify(exec)(
      `npx supabase start --workdir ${projectRoot}`
    );
    if (stdout) {
      console.log(stdout);
    }

    if (stderr) {
      console.warn(stderr);
    }

    return { success: true };
  } catch (error) {
    console.error(error);
    return { success: false };
  }
}
