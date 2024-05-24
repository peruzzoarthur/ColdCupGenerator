import { Module } from "@nestjs/common";
import { MatchesService } from "./matches.service";
import { MatchesController } from "./matches.controller";
import { PrismaService } from "src/prisma.service";
import { SetsService } from "src/sets/sets.service";
import { GamesService } from "src/games/games.service";
import { JwtService } from "@nestjs/jwt";

@Module({
  controllers: [MatchesController],
  providers: [
    MatchesService,
    PrismaService,
    SetsService,
    GamesService,
    JwtService,
  ],
})
export class MatchesModule {}
