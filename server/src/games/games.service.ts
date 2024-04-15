import { Injectable } from "@nestjs/common";
import { CreateGameDto } from "./dto/create-game.dto";
import { UpdateGameDto } from "./dto/update-game.dto";
import { PrismaService } from "src/prisma.service";

@Injectable()
export class GamesService {
  constructor(private readonly prismaService: PrismaService) {}
  async create(createGameDto: CreateGameDto) {
    return await this.prismaService.game.create({
      data: {
        set: {
          connect: {
            id: createGameDto.setId,
          },
        },
        doubles: {
          connect: [
            {
              id: createGameDto.doublesOneId,
            },
            { id: createGameDto.doublesTwoId },
          ],
        },
        events: {
          connect: {
            id: createGameDto.eventId,
          },
        },
        winner: {
          connect: { id: createGameDto.winnerDoublesId },
        },
      },
    });
  }

  findAll() {
    return `This action returns all games`;
  }

  findOne(id: number) {
    return `This action returns a #${id} game`;
  }

  update(id: number, updateGameDto: UpdateGameDto) {
    return `This action updates a #${id} game`;
  }

  remove(id: number) {
    return `This action removes a #${id} game`;
  }
}
