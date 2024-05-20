import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import * as Joi from "@hapi/joi";

import { PrismaService } from "./prisma.service";
import { PlayerModule } from "./players/player.module";
import { DoublesModule } from "./doubles/doubles.module";
import { EventsModule } from "./events/events.module";
import { CategoriesModule } from "./categories/categories.module";
import { MatchesModule } from "./matches/matches.module";
import { SetsModule } from "./sets/sets.module";
import { GamesModule } from "./games/games.module";
import { PlacesModule } from "./places/places.module";
import { MatchDatesModule } from "./match-dates/match-dates.module";
import { CourtsModule } from "./courts/courts.module";
import { AuthModule } from "./auth/auth.module";
import { UsersModule } from "./users/users.module";
import { JwtAuthGuard } from "./auth/jwt-auth.guard";
import { RefreshJwtGuard } from "./auth/refresh-jwt-auth.guard";

@Module({
  imports: [
    ConfigModule.forRoot({
      validationSchema: Joi.object({
        DATABASE_URL: Joi.string().required(),
        JWT_SECRET_KEY: Joi.string().required(),
      }),
    }),
    PlayerModule,
    DoublesModule,
    EventsModule,
    CategoriesModule,
    MatchesModule,
    SetsModule,
    GamesModule,
    PlacesModule,
    MatchDatesModule,
    CourtsModule,
    UsersModule,
    AuthModule,
  ],
  controllers: [],
  providers: [PrismaService],
})
export class AppModule {}
