import { CanActivate, ExecutionContext, Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class AuthGuard implements CanActivate {
  constructor(private jwtService: JwtService) {}

  canActivate(context: ExecutionContext): boolean {
    const request = context.switchToHttp().getRequest();
    const token = request.headers.authorization?.split(' ')[1];
    if (!token) return false;

    try {
      const decoded = this.jwtService.verify(token, {
        secret: process.env.SUPABASE_JWT_SECRET,
      });
      request.user = decoded;
      return true;
    } catch (e) {
      return false;
    }
  }
}
