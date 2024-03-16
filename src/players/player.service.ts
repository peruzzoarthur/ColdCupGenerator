import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { UpdatePlayerDto } from "./dto/update-player.dto";
import { Config } from "unique-names-generator";
import { CategoriesService } from "src/categories/categories.service";
import { CatType } from "src/categories/types/categories.types";
const {
  uniqueNamesGenerator,
  names,
  adjectives,
} = require("unique-names-generator");
@Injectable()
export class PlayerService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly categoriesService: CategoriesService
  ) {}

  async createPlayer() {
    try {
      const firstName: string = uniqueNamesGenerator({
        dictionaries: [names],
      });

      const lastName: string = uniqueNamesGenerator({
        dictionaries: [adjectives],
        style: "capital",
      });
      const level = 1;
      const type: CatType = "ALL" as CatType;

      const category = await this.categoriesService.getCategory(level, type);

      const newPlayer = await this.prismaService.player.create({
        data: {
          position: "DRIVE",
          email: `${firstName}${lastName}@proton.me`,
          firstName: firstName,
          lastName: lastName,
          categories: {
            connect: {
              id: category.id,
            },
          },
        },
      });
      return newPlayer;
    } catch (error) {
      console.error("Error creating player:", error);
      return error;
    }
  }

  async getAllPlayers() {
    const allPlayers = this.prismaService.player.findMany({
      select: {
        id: true,
        firstName: true,
        lastName: true,
        position: true,
        categories: true,
      },
    });
    return allPlayers;
  }

  async getPlayersByCategory(categoryId: string) {
    const allPlayers = this.prismaService.player.findMany({
      select: {
        id: true,
        firstName: true,
        lastName: true,
        position: true,
        categories: true,
      },
      where: {
        categories: {
          some: {
            id: categoryId,
          },
        },
      },
    });
    return allPlayers;
  }
}
