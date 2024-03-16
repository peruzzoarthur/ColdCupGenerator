import { Injectable } from "@nestjs/common";
import { CreateDoubleDto } from "./dto/create-double.dto";
import { UpdateDoubleDto } from "./dto/update-double.dto";
import { PrismaService } from "src/prisma.service";

@Injectable()
export class DoublesService {
  constructor(private readonly prismaService: PrismaService) {}
  async createDouble(createDoubleDto: CreateDoubleDto) {
    const double = await this.prismaService.double.create({
      data: {
        players: {
          connect: [
            { id: createDoubleDto.playerOneId },
            { id: createDoubleDto.playerTwoId },
          ],
        },
        category: {
          connect: {
            id: createDoubleDto.categoryId,
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

  findOne(id: number) {
    return `This action returns a #${id} double`;
  }

  update(id: number, updateDoubleDto: UpdateDoubleDto) {
    return `This action updates a #${id} double`;
  }

  remove(id: number) {
    return `This action removes a #${id} double`;
  }
}
