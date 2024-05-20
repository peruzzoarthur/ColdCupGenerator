import { Module } from "@nestjs/common";
import { EventsService } from "./events.service";
import { EventsController } from "./events.controller";
import { PrismaService } from "src/prisma.service";
import { CategoriesService } from "src/categories/categories.service";
import { MatchesService } from "src/matches/matches.service";
import { SetsService } from "src/sets/sets.service";
import { GamesService } from "src/games/games.service";
import { JwtService } from "@nestjs/jwt";

@Module({
  controllers: [EventsController],
  providers: [
    EventsService,
    PrismaService,
    CategoriesService,
    MatchesService,
    SetsService,
    GamesService,
    JwtService,
  ],
})
export class EventsModule {}
