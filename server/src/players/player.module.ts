import { Module } from "@nestjs/common";
import { PrismaService } from "src/prisma.service";
import { PlayerService } from "./player.service";
import { PlayerController } from "./player.controller";
import { CategoriesService } from "src/categories/categories.service";

@Module({
  controllers: [PlayerController],
  providers: [PlayerService, PrismaService, CategoriesService],
})
export class PlayerModule {}
