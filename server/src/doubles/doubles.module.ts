import { Module } from "@nestjs/common";
import { DoublesService } from "./doubles.service";
import { DoublesController } from "./doubles.controller";
import { PrismaService } from "src/prisma.service";
import { JwtService } from "@nestjs/jwt";

@Module({
  controllers: [DoublesController],
  providers: [DoublesService, PrismaService, JwtService],
})
export class DoublesModule {}
