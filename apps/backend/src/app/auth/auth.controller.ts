import { Body, Controller, Post } from '@nestjs/common';

import { LoginDto } from './dto/login.dto';
import { RegistrationDto } from './dto/registration.dto';
import { AuthService } from './auth.service';

@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}

  @Post('register')
  async register(@Body() body: RegistrationDto) {
    return this.authService.registerUser(body.email, body.password);
  }

  @Post('login')
  async login(@Body() body: LoginDto) {
    return this.authService.loginUser(body.email, body.password);
  }

  @Post('logout')
  async logout(@Body() body: { token: string }) {
    return this.authService.logoutUser(body.token);
  }
}
