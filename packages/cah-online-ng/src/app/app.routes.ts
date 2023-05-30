import { Route } from '@angular/router';
import { GamePageComponent } from './game/pages/game-page/game-page.component';
import { authenticationGuard } from './core/guards/authentication.guard';
import { LoginPageComponent } from './auth/pages/login-page/login-page.component';

export const appRoutes: Route[] = [
  {
    path: 'game',
    component: GamePageComponent,
    canActivate: [authenticationGuard],
  },
  {
    path: 'login',
    component: LoginPageComponent,
  },
];
