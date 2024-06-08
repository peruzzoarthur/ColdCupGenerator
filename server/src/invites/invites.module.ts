import { Module } from "@nestjs/common";
import { InvitesService } from "./invites.service";
import { InvitesController } from "./invites.controller";
import { PrismaModule } from "prisma/prisma.module";
import { JwtService } from "@nestjs/jwt";
import { DoublesService } from "src/doubles/doubles.service";
import { EventsService } from "src/events/events.service";
import { MatchesService } from "src/matches/matches.service";
import { SetsService } from "src/sets/sets.service";
import { GamesService } from "src/games/games.service";

@Module({
  controllers: [InvitesController],
  providers: [
    InvitesService,
    JwtService,
    DoublesService,
    EventsService,
    MatchesService,
    SetsService,
    GamesService,
  ],
  imports: [PrismaModule],
})
export class InvitesModule {}
