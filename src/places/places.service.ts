import { Injectable } from "@nestjs/common";
import { CreatePlaceDto } from "./dto/create-place.dto";
import { UpdatePlaceDto } from "./dto/update-place.dto";
import { PrismaService } from "src/prisma.service";

@Injectable()
export class PlacesService {
  constructor(private readonly prismaService: PrismaService) {}
  async createPlace(createPlaceDto: CreatePlaceDto) {
    const place = await this.prismaService.place.create({
      data: {
        name: createPlaceDto.name,
        address: createPlaceDto.address,
      },
    });
    return place;
  }

  async findAllPlaces() {
    return await this.prismaService.place.findMany({
      select: {
        id: true,
        name: true,
        address: true,
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
