import { CanActivateFn, Router } from '@angular/router';
import { AuthService } from '../../auth/services/auth.service';
import { inject } from '@angular/core';

export function authenticationGuard(): CanActivateFn {
  return () => {
    const router: Router = inject(Router);
    const authService = inject(AuthService);

    if (authService.session === null) {
      router.navigate(['/login']);
      return false;
    }

    return true;
  };
}
