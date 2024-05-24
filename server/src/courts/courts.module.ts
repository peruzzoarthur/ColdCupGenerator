import { Module } from "@nestjs/common";
import { CourtsService } from "./courts.service";
import { CourtsController } from "./courts.controller";
import { PrismaService } from "src/prisma.service";
import { JwtService } from "@nestjs/jwt";

@Module({
  controllers: [CourtsController],
  providers: [CourtsService, PrismaService, JwtService],
})
export class CourtsModule {}
