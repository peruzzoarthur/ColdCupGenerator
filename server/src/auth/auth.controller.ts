//src/auth/auth.controller.ts

import { Body, Controller, Post, Request, UseGuards } from "@nestjs/common";
import { AuthService } from "./auth.service";
import { ApiOkResponse, ApiTags } from "@nestjs/swagger";
import { AuthEntity } from "./entity/auth.entity";
import { LocalAuthGuard } from "./local-auth.guard";
import { RefreshJwtGuard } from "./refresh-jwt-auth.guard";
import { RefreshDto } from "./dto/refresh.dto";

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
  // @UseGuards(LocalAuthGuard)
  @Post("refresh")
  @ApiOkResponse({ type: AuthEntity })
  async refreshToken(@Body() refreshDto: RefreshDto) {
    return this.authService.refreshToken({
      email: refreshDto.email,
      id: refreshDto.id,
    });
  }
}
