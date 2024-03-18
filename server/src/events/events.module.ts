import { Module } from "@nestjs/common";
import { EventsService } from "./events.service";
import { EventsController } from "./events.controller";
import { PrismaService } from "src/prisma.service";
import { CategoriesService } from "src/categories/categories.service";

@Module({
  controllers: [EventsController],
  providers: [EventsService, PrismaService, CategoriesService],
})
export class EventsModule {}
