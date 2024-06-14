import { Injectable } from "@nestjs/common";
import { CreateEventMatchDto } from "./dto/create-event-match.dto";
import { UpdateEventMatchDto } from "./dto/update-event-match.dto";
import { PrismaService } from "src/prisma.service";

@Injectable()
export class EventMatchesService {
  constructor(private readonly prisma: PrismaService) {}

  create(createEventMatchDto: CreateEventMatchDto) {
    return "This action adds a new eventMatch";
  }

  async findAll() {
    return await this.prisma.eventMatch.findMany();
  }

  async findOne(id: string) {
    const eventMatch = await this.prisma.eventMatch.findUniqueOrThrow({
      where: { id: id },
    });
    return eventMatch;
  }

  update(id: number, updateEventMatchDto: UpdateEventMatchDto) {
    return `This action updates a #${id} eventMatch`;
  }

  remove(id: number) {
    return `This action removes a #${id} eventMatch`;
  }
}