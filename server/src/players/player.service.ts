import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { CategoriesService } from "src/categories/categories.service";
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
          firstName: createPlayerDto.firstName,
          lastName: createPlayerDto.lastName,
          category: {
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
        category: true,
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
        category: true,
      },
      where: {
        category: {
          id: categoryId,
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

  async getPlayerInvites(userId: string) {
    const user = await this.prismaService.user.findUniqueOrThrow({
      where: {
        id: userId,
      },
    });

    const invites = await this.prismaService.player.findUniqueOrThrow({
      where: {
        id: user.playerId,
      },
      select: {
        id: true,
        invites: true,
      },
    });
    return invites;
  }

  async getPlayerById(playerId: string) {
    return await this.prismaService.player.findUniqueOrThrow({
      where: {
        id: playerId,
      },
      select: {
        firstName: true,
        lastName: true,
        id: true,
        category: true,
        position: true,
        doubles: {
          select: {
            id: true,
            category: true,
            players: true,
            matches: {
              select: {
                id: true,
                category: true,
                event: true,
                matchDate: true,
                sets: {
                  select: {
                    setWinnerId: true,
                    games: {
                      select: {
                        winnerId: true,
                      },
                    },
                  },
                },
                isFinished: true,
                winnerDoublesId: true,
                doubles: {
                  select: {
                    players: true,
                    id: true,
                  },
                },
                court: {
                  select: {
                    place: true,
                    name: true,
                  },
                },
              },
            },
            matchesWins: true,
            eventDouble: true,
          },
        },
      },
    });
  }
}
