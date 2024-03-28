import { Injectable } from "@nestjs/common";
import { CreateMatchDto } from "./dto/create-match.dto";
import { UpdateMatchDto } from "./dto/update-match.dto";
import { PrismaService } from "src/prisma.service";

@Injectable()
export class MatchesService {
  constructor(private readonly prismaService: PrismaService) {}
  async create(createMatchDto: CreateMatchDto) {
    const match = await this.prismaService.match.create({
      data: {
        doubles: { connect: createMatchDto.doublesIds.map((id) => ({ id })) },
        eventId: createMatchDto.eventId,
        categoryId: createMatchDto.categoryId,
      },
      select: {
        id: true,
        isFinished: true,
        category: true,
        categoryId: true,
        doubles: true,
      },
    });
    return match;
  }

  findAll() {
    return `This action returns all matches`;
  }

  findOne(id: number) {
    return `This action returns a #${id} match`;
  }

  update(id: number, updateMatchDto: UpdateMatchDto) {
    return `This action updates a #${id} match`;
  }

  remove(id: number) {
    return `This action removes a #${id} match`;
  }
}
