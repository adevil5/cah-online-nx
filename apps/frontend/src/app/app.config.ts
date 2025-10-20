import { ApplicationConfig } from '@angular/core';
import { provideRouter } from '@angular/router';
import { provideHttpClient, withFetch } from '@angular/common/http';
import { appRoutes } from './app.routes';

/**
 * Application configuration with providers
 *
 * Includes:
 * - Router configuration
 * - HttpClient with fetch API (Angular 20+)
 * - NgRx SignalStore (provided via providedIn: 'root' in each store)
 */
export const appConfig: ApplicationConfig = {
  providers: [
    provideRouter(appRoutes),
    provideHttpClient(withFetch()),
  ],
};
