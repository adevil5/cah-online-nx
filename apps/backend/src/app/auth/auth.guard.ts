import { CanActivate, ExecutionContext, Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { Request } from 'express';

class DecodedJwt {
  sub: string;
  name?: string;
  iat?: number;
  exp?: number;
  role?: string;
  aud?: string;
  iss?: string;
  jti?: string;
}

export interface AuthenticatedRequest extends Request {
  user: DecodedJwt;
}

@Injectable()
export class AuthGuard implements CanActivate {
  constructor(private jwtService: JwtService) {}

  canActivate(context: ExecutionContext): boolean {
    const request: AuthenticatedRequest = context.switchToHttp().getRequest();
    const token = request.headers.authorization?.split(' ')[1];
    if (!token) return false;

    try {
      const decoded: DecodedJwt = this.jwtService.verify(token, {
        secret: process.env.SUPABASE_JWT_SECRET,
      });
      request.user = decoded;
      return true;
    } catch (e) {
      return false;
    }
  }
}
