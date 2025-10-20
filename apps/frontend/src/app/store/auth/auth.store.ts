import { computed, inject } from '@angular/core';
import { signalStore, withState, withComputed, withMethods, patchState } from '@ngrx/signals';
import { rxMethod } from '@ngrx/signals/rxjs-interop';
import { pipe, switchMap, tap, catchError, of } from 'rxjs';
import { tapResponse } from '@ngrx/operators';
import { HttpClient } from '@angular/common/http';
import type { AuthState, AuthUser, AuthSession, LoginDto, RegistrationDto } from '../models';

// Initial state
const initialState: AuthState = {
  user: null,
  session: null,
  isAuthenticated: false,
  loading: false,
  error: null,
};

/**
 * AuthStore - Manages authentication state using NgRx SignalStore
 *
 * Features:
 * - User authentication (login/register/logout)
 * - Session management
 * - Loading and error states
 * - Reactive state updates
 *
 * Usage:
 * ```typescript
 * export class LoginComponent {
 *   readonly authStore = inject(AuthStore);
 *
 *   login() {
 *     this.authStore.login({ email: 'user@example.com', password: 'password' });
 *   }
 * }
 * ```
 */
export const AuthStore = signalStore(
  { providedIn: 'root' },
  withState(initialState),
  withComputed((store) => ({
    // Computed values that automatically update when state changes
    isLoggedIn: computed(() => store.isAuthenticated() && store.user() !== null),
    currentUserId: computed(() => store.user()?.userId ?? null),
    currentUserEmail: computed(() => store.user()?.email ?? null),
  })),
  withMethods((store, http = inject(HttpClient)) => ({
    /**
     * Register a new user
     */
    register: rxMethod<RegistrationDto>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap((dto) =>
          http.post<{ user: AuthUser; session: AuthSession }>('/api/auth/register', dto).pipe(
            tapResponse({
              next: (response) => {
                patchState(store, {
                  user: response.user,
                  session: response.session,
                  isAuthenticated: true,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Registration failed',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Login with email and password
     */
    login: rxMethod<LoginDto>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap((dto) =>
          http.post<{ user: AuthUser; session: AuthSession }>('/api/auth/login', dto).pipe(
            tapResponse({
              next: (response) => {
                patchState(store, {
                  user: response.user,
                  session: response.session,
                  isAuthenticated: true,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                patchState(store, {
                  loading: false,
                  error: error.message || 'Login failed',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Logout the current user
     */
    logout: rxMethod<void>(
      pipe(
        tap(() => patchState(store, { loading: true, error: null })),
        switchMap(() =>
          http.post('/api/auth/logout', {}).pipe(
            tapResponse({
              next: () => {
                patchState(store, {
                  user: null,
                  session: null,
                  isAuthenticated: false,
                  loading: false,
                  error: null,
                });
              },
              error: (error: Error) => {
                // Even if logout fails on server, clear local state
                patchState(store, {
                  user: null,
                  session: null,
                  isAuthenticated: false,
                  loading: false,
                  error: error.message || 'Logout failed',
                });
              },
            })
          )
        )
      )
    ),

    /**
     * Set authentication state from stored session (e.g., on app init)
     */
    setAuthState(user: AuthUser | null, session: AuthSession | null) {
      patchState(store, {
        user,
        session,
        isAuthenticated: user !== null && session !== null,
        error: null,
      });
    },

    /**
     * Clear any authentication errors
     */
    clearError() {
      patchState(store, { error: null });
    },
  }))
);
