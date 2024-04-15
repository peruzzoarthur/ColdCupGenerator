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
        // matchId: createMatchDateDto.matchId ?? undefined,
      },
    });
  }

  findAll() {
    return `This action returns all matchDates`;
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
