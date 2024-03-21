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
      throw new HttpException(
        "Only one player set to doubles",
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
        categories: true,
      },
    });

    const double = await this.prismaService.double.create({
      data: {
        players: {
          connect: [{ id: playerOne.id }, { id: playerTwo.id }],
        },
        category: {
          connect: {
            id: playerTwo.categories[0].id,
          },
        },
      },
    });
    return double;
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

  update(id: number, updateDoubleDto: UpdateDoubleDto) {
    return `This action updates a #${id} double`;
  }

  remove(id: number) {
    return `This action removes a #${id} double`;
  }
}
