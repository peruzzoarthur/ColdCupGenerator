import { Module } from "@nestjs/common";
import { PlacesService } from "./places.service";
import { PlacesController } from "./places.controller";
import { PrismaService } from "src/prisma.service";
import { CourtsService } from "src/courts/courts.service";

@Module({
  controllers: [PlacesController],
  providers: [PlacesService, PrismaService, CourtsService],
})
export class PlacesModule {}
