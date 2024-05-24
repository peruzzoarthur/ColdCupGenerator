import { Module } from "@nestjs/common";
import { MatchDatesService } from "./match-dates.service";
import { MatchDatesController } from "./match-dates.controller";
import { PrismaService } from "src/prisma.service";
import { JwtService } from "@nestjs/jwt";

@Module({
  controllers: [MatchDatesController],
  providers: [MatchDatesService, PrismaService, JwtService],
})
export class MatchDatesModule {}
