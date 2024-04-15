import { Module } from "@nestjs/common";
import { MatchDatesService } from "./match-dates.service";
import { MatchDatesController } from "./match-dates.controller";
import { PrismaService } from "src/prisma.service";

@Module({
  controllers: [MatchDatesController],
  providers: [MatchDatesService, PrismaService],
})
export class MatchDatesModule {}
