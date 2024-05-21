import {
  Injectable,
  NotFoundException,
  UnauthorizedException,
} from "@nestjs/common";
import { JwtService } from "@nestjs/jwt";
import { AuthEntity } from "./entity/auth.entity";
import * as bcrypt from "bcrypt";
import { PrismaService } from "src/prisma.service";
import { UserEntity } from "src/users/entities/user.entity";

@Injectable()
export class AuthService {
  constructor(
    private prisma: PrismaService,
    private jwtService: JwtService
  ) {}

  async validateUser(email: string, password: string): Promise<UserEntity> {
    const user = await this.prisma.user.findUnique({
      where: {
        email: email,
      },
    });

    if (!user) {
      return null;
    }

    const isPasswordValid = await bcrypt.compare(password, user.password);

    if (!isPasswordValid) {
      return null;
    }

    return user;
  }

  async login(user: UserEntity) {
    const payload = { username: user.email, sub: user.id };
    console.log("Login Payload:", payload);

    const accessToken = this.jwtService.sign(payload);
    const refreshToken = this.jwtService.sign(payload, { expiresIn: "7d" });

    console.log("Access Token:", accessToken);
    console.log("Refresh Token:", refreshToken);

    return {
      user: user,
      accessToken: accessToken,
      refreshToken: refreshToken,
    };
  }

  async refreshToken({ email, id }: { email: string; id: string }) {
    const payload = { username: email, sub: id };
    console.log("Login Payload:", payload);
    const accessToken = this.jwtService.sign(payload);
    console.log("Access Token:", accessToken);

    return {
      accessToken: accessToken,
    };
  }
}

// async login(email: string, password: string): Promise<AuthEntity> {
//   const user = await this.prisma.user.findUnique({
//     where: {
//       email: email,
//     },
//   });

//   if (!user) {
//     throw new NotFoundException(`No user found for email: ${email}`);
//   }

//   const isPasswordValid = await bcrypt.compare(password, user.password);

//   if (!isPasswordValid) {
//     throw new UnauthorizedException("Invalid password");
//   }

//   return {
//     accessToken: this.jwtService.sign({ userId: user.id }),
//   };
// }
