import { Injectable } from "@nestjs/common";
import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { PrismaService } from "src/prisma.service";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { CategoriesService } from "src/categories/categories.service";

@Injectable()
export class EventsService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly categoriesService: CategoriesService
  ) {}
  async createEvent(createEventDto: CreateEventDto) {
    const placesToConnect = createEventDto.placesIds.map((id) => ({ id }));

    const event = await this.prismaService.event.create({
      data: {
        name: createEventDto.name,
        categories: {
          connect: { id: createEventDto.categoryId },
        },
        places: {
          connect: placesToConnect,
        },
      },
    });

    return event;
  }

  async findAllEvents() {
    return await this.prismaService.event.findMany({
      select: {
        id: true,
        name: true,
        places: true,
        categories: {
          select: {
            id: true,
            type: true,
            level: true,
            doubles: {
              select: {
                id: true,
                players: true,
              },
            },
          },
        },
      },
    });
  }

  async registerDoublesInEvent(
    registerDoublesInEventDto: RegisterDoublesInEventDto
  ) {
    const registered = await this.prismaService.event.update({
      where: { id: registerDoublesInEventDto.eventId },
      data: {
        categories: {
          connect: {
            id: registerDoublesInEventDto.categoryId,
            doubles: {
              some: {
                id: registerDoublesInEventDto.doublesId,
              },
            },
          },
        },
      },
    });

    return registered;
  }
  findOne(id: number) {
    return `This action returns a #${id} event`;
  }

  update(id: number, updateEventDto: UpdateEventDto) {
    return `This action updates a #${id} event`;
  }

  remove(id: number) {
    return `This action removes a #${id} event`;
  }
}
