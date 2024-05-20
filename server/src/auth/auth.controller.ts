//src/auth/auth.controller.ts

import { Body, Controller, Post, Request, UseGuards } from "@nestjs/common";
import { AuthService } from "./auth.service";
import { ApiOkResponse, ApiTags } from "@nestjs/swagger";
import { AuthEntity } from "./entity/auth.entity";
import { LocalAuthGuard } from "./local-auth.guard";
import { RefreshJwtGuard } from "./refresh-jwt-auth.guard";

@Controller("auth")
@ApiTags("auth")
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @UseGuards(LocalAuthGuard)
  @Post("login")
  @ApiOkResponse({ type: AuthEntity })
  async login(@Request() req) {
    return this.authService.login(req.user);
  }
  @UseGuards(RefreshJwtGuard)
  @Post("refresh")
  @ApiOkResponse({ type: AuthEntity })
  async refreshToken(@Request() req) {
    return this.authService.refreshToken(req.user);
  }
}
