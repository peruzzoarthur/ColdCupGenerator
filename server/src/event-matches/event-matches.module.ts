import { Module } from "@nestjs/common";
import { EventMatchesService } from "./event-matches.service";
import { EventMatchesController } from "./event-matches.controller";
import { PrismaService } from "src/prisma.service";

@Module({
  controllers: [EventMatchesController],
  providers: [EventMatchesService, PrismaService],
})
export class EventMatchesModule {}
