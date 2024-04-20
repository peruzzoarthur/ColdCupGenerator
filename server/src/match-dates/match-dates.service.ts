import { Injectable } from "@nestjs/common";
import { CreateMatchDateDto } from "./dto/create-match-date.dto";
import { UpdateMatchDateDto } from "./dto/update-match-date.dto";
import { PrismaService } from "src/prisma.service";

@Injectable()
export class MatchDatesService {
  constructor(private readonly prismaService: PrismaService) {}
  async create(createMatchDateDto: CreateMatchDateDto) {
    return await this.prismaService.matchDate.create({
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

  async findAll() {
    return await this.prismaService.matchDate.findMany({
      select: {
        id: true,
        eventId: true,
        start: true,
        finish: true,
        matchId: true,
        match: true,
      },
    });
  }

  async findMatchDatesInOrderByEventId(eventId: string) {
    const matchDates = await this.prismaService.matchDate.findMany({
      where: {
        eventId: eventId,
      },
      orderBy: {
        start: "asc",
      },
      select: {
        start: true,
        finish: true,
        matchId: true,
        match: {
          select: {
            number: true,
            doubles: {
              select: {
                players: true,
              },
            },
          },
        },
      },
    });
    return matchDates;
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
