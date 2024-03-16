import { Module } from "@nestjs/common";
import { DoublesService } from "./doubles.service";
import { DoublesController } from "./doubles.controller";
import { PrismaService } from "src/prisma.service";

@Module({
  controllers: [DoublesController],
  providers: [DoublesService, PrismaService],
})
export class DoublesModule {}
