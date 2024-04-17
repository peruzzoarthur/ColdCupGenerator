import { Injectable } from "@nestjs/common";
import { CreateMatchDateDto } from "./dto/create-match-date.dto";
import { UpdateMatchDateDto } from "./dto/update-match-date.dto";
import { PrismaService } from "src/prisma.service";

@Injectable()
export class MatchDatesService {
  constructor(private readonly prismaService: PrismaService) {}
  create(createMatchDateDto: CreateMatchDateDto) {
    return this.prismaService.matchDate.create({
      data: {
        eventId: createMatchDateDto.eventId,
        start: createMatchDateDto.startDate,
        finish: createMatchDateDto.finishDate,
        // match: {
        //   connect: { id: createMatchDateDto.matchId ?? null },
        // },
      },
    });
  }

  findAll() {
    return this.prismaService.matchDate.findMany({
      select: {
        id: true,
        eventId: true,
        start: true,
        finish: true,
        match: true,
      },
    });
  }

  findOne(id: number) {
    return `This action returns a #${id} matchDate`;
  }

  update(id: number, updateMatchDateDto: UpdateMatchDateDto) {
    return `This action updates a #${id} matchDate`;
  }

  remove(id: number) {
    return `This action removes a #${id} matchDate`;
  }
}
