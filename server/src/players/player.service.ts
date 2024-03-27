import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { UpdatePlayerDto } from "./dto/update-player.dto";
import { Config } from "unique-names-generator";
import { CategoriesService } from "src/categories/categories.service";
import { CatType } from "src/categories/types/categories.types";
import { Prisma } from "@prisma/client";
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

  async createPlayer(createPlayerDto: CreatePlayerDto) {
    try {
      const newPlayer = await this.prismaService.player.create({
        data: {
          position: createPlayerDto.position,
          email: `${createPlayerDto.firstName}${createPlayerDto.lastName}@proton.me`,
          firstName: createPlayerDto.firstName,
          lastName: createPlayerDto.lastName,
          categories: {
            connect: {
              id: createPlayerDto.categoryId,
            },
          },
        },
      });
      return newPlayer;
    } catch (error) {
      if (
        error instanceof Prisma.PrismaClientKnownRequestError &&
        error.code === "P2002"
      ) {
        throw new HttpException(
          "Error creating user, email already registered",
          HttpStatus.BAD_REQUEST
        );
      } else {
        throw new HttpException(
          "Error creating user. Please try again later.",
          HttpStatus.INTERNAL_SERVER_ERROR
        );
      }
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

  async deletePlayer(playerId: string) {
    const getPlayer = await this.prismaService.player.findUnique({
      where: {
        id: playerId,
      },
    });

    if (!getPlayer) {
      throw new HttpException("Player not found", HttpStatus.BAD_REQUEST);
    }

    const removePlayer = await this.prismaService.player.delete({
      where: {
        id: playerId,
      },
    });

    return removePlayer;
  }
}
