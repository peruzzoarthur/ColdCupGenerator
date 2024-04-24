import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreateCourtDto } from "./dto/create-court.dto";
import { UpdateCourtDto } from "./dto/update-court.dto";
import { PrismaService } from "src/prisma.service";
import { Prisma } from "@prisma/client";
import { PrismaError } from "src/utils/prismaError";

@Injectable()
export class CourtsService {
  constructor(private readonly prismaService: PrismaService) {}
  async create(createCourtDto: CreateCourtDto) {
    try {
      const newCourt = await this.prismaService.court.create({
        data: {
          name: createCourtDto.name,
          placeId: createCourtDto.placeId,
        },
      });
      return newCourt;
    } catch (error) {
      if (
        error instanceof Prisma.PrismaClientKnownRequestError &&
        error.code === PrismaError.UniqueConstraintFailed
      ) {
        throw new HttpException(
          `Court "${createCourtDto.name}" is already registered at this place.`,
          HttpStatus.BAD_REQUEST
        );
      } else {
        throw new HttpException(
          "Error creating court. Please try again later.",
          HttpStatus.INTERNAL_SERVER_ERROR
        );
      }
    }
  }

  findAll() {
    return `This action returns all courts`;
  }

  findOne(id: number) {
    return `This action returns a #${id} court`;
  }

  update(id: number, updateCourtDto: UpdateCourtDto) {
    return `This action updates a #${id} court`;
  }

  remove(id: number) {
    return `This action removes a #${id} court`;
  }
}
