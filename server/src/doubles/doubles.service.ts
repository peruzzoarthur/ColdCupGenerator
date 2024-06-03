import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreateDoubleDto } from "./dto/create-double.dto";
import { UpdateDoubleDto } from "./dto/update-double.dto";
import { PrismaService } from "src/prisma.service";
import { GetDoublesByIdDto } from "./dto/get-doubles-by-id.dto";

@Injectable()
export class DoublesService {
  constructor(private readonly prismaService: PrismaService) {}
  async createDouble(createDoubleDto: CreateDoubleDto) {
    if (createDoubleDto.playerOneId === createDoubleDto.playerTwoId) {
      throw new HttpException(
        "Sorry, can't have same player doubles...",
        HttpStatus.BAD_REQUEST
      );
    }

    if (!createDoubleDto.playerOneId || !createDoubleDto.playerTwoId) {
      throw new HttpException("Select two players...", HttpStatus.BAD_REQUEST);
    }

    if (!createDoubleDto.categoryId) {
      throw new HttpException(
        "Please select a category...",
        HttpStatus.BAD_REQUEST
      );
    }
    const playerOne = await this.prismaService.player.findUnique({
      where: {
        id: createDoubleDto.playerOneId,
      },
    });

    const playerTwo = await this.prismaService.player.findUnique({
      where: {
        id: createDoubleDto.playerTwoId,
      },
      select: {
        id: true,
        category: true,
      },
    });

    const doublesExist = await this.prismaService.double.findFirst({
      where: {
        AND: [
          {
            players: {
              some: { id: playerOne.id },
            },
          },
          { players: { some: { id: playerTwo.id } } },
        ],
      },
    });

    if (doublesExist) {
      throw new HttpException(
        "Players already registered as doubles.",
        HttpStatus.CONFLICT
      );
    }

    const createDoubles = await this.prismaService.double.create({
      data: {
        players: {
          connect: [{ id: playerOne.id }, { id: playerTwo.id }],
        },
        category: {
          connect: {
            id: createDoubleDto.categoryId,
          },
        },
      },
      select: {
        id: true,
        players: true,
      },
    });
    return createDoubles;
  }

  async findAllDoubles() {
    const doubles = await this.prismaService.double.findMany({
      select: {
        id: true,
        players: true,
        category: true,
      },
    });
    return doubles;
  }

  async getDoublesById(getDoublesByIdDto: GetDoublesByIdDto) {
    const doubles = await this.prismaService.double.findUnique({
      where: {
        id: getDoublesByIdDto.id,
      },
      select: {
        id: true,
        players: true,
      },
    });
    return doubles;
  }

  async updateCategory(doublesId: string, updateDoubleDto: UpdateDoubleDto) {
    const getDoubles = await this.prismaService.double.findUnique({
      where: {
        id: doublesId,
      },
    });

    if (!getDoubles) {
      throw new HttpException("Doubles not found", HttpStatus.BAD_REQUEST);
    }

    const updateDoubles = this.prismaService.double.update({
      where: {
        id: doublesId,
      },
      data: {
        categoryId: updateDoubleDto.categoryId,
      },
    });
    return updateDoubles;
  }

  async deleteDoubles(doublesId: string) {
    const getDoubles = await this.prismaService.double.findUnique({
      where: {
        id: doublesId,
      },
    });

    if (!getDoubles) {
      throw new HttpException("Doubles not found", HttpStatus.BAD_REQUEST);
    }

    const removeDoubles = await this.prismaService.double.delete({
      where: {
        id: doublesId,
      },
    });

    return removeDoubles;
  }

  async softDeleteDoubles(playerId: string, doublesId: string) {
    const doubles = await this.prismaService.double.findUniqueOrThrow({
      where: { id: doublesId },
      select: {
        id: true,
        category: true,
        players: true,
      },
    });
    if (
      doubles.players[0].id !== playerId ||
      doubles.players[1].id !== playerId
    ) {
      throw new HttpException(
        "Unauthorized to delete other players doubles",
        HttpStatus.UNAUTHORIZED
      );
    }
    await this.prismaService.double.update({
      where: { id: doubles.id },
      data: {
        players: {
          disconnect: [
            { id: doubles.players[0].id },
            { id: doubles.players[1].id },
          ],
        },
      },
    });
  }
}
