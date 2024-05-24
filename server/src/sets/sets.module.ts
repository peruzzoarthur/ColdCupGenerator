import { Module } from "@nestjs/common";
import { SetsService } from "./sets.service";
import { SetsController } from "./sets.controller";
import { PrismaService } from "src/prisma.service";
import { GamesService } from "src/games/games.service";
import { JwtService } from "@nestjs/jwt";

@Module({
  controllers: [SetsController],
  providers: [SetsService, PrismaService, GamesService, JwtService],
  exports: [SetsService],
})
export class SetsModule {}
