import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreatePlaceDto } from "./dto/create-place.dto";
import { UpdatePlaceDto } from "./dto/update-place.dto";
import { PrismaService } from "src/prisma.service";
import { CourtsService } from "src/courts/courts.service";

@Injectable()
export class PlacesService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly courtsService: CourtsService
  ) {}
  async createPlace(createPlaceDto: CreatePlaceDto) {
    const checkAddress = await this.prismaService.place.findUnique({
      where: {
        address: createPlaceDto.address,
      },
    });

    if (checkAddress) {
      throw new HttpException(
        "Address already registered.",
        HttpStatus.CONFLICT
      );
    }

    const place = await this.prismaService.place.create({
      data: {
        name: createPlaceDto.name,
        address: createPlaceDto.address,
      },
    });

    if (!place) {
      throw new HttpException("No place found", HttpStatus.NOT_FOUND);
    }

    const courtsNames = createPlaceDto.courts.split(",");
    const courts = courtsNames.forEach(async (name) => {
      const createCourt = await this.courtsService.create({
        name: name,
        placeId: place.id,
      });
      console.log(createCourt);
    });
    return place;
  }

  async findAllPlaces() {
    return await this.prismaService.place.findMany({
      select: {
        id: true,
        name: true,
        address: true,
        courts: true,
      },
    });
  }

  findOne(id: number) {
    return `This action returns a #${id} place`;
  }

  update(id: number, updatePlaceDto: UpdatePlaceDto) {
    return `This action updates a #${id} place`;
  }

  remove(id: number) {
    return `This action removes a #${id} place`;
  }
}
