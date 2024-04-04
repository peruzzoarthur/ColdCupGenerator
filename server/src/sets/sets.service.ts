import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreateSetDto } from "./dto/create-set.dto";
import { UpdateSetDto } from "./dto/update-set.dto";
import { PrismaService } from "src/prisma.service";
import { SetFinishedDto } from "./dto/set-finished.dto";
import { GamesService } from "src/games/games.service";

@Injectable()
export class SetsService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly gamesService: GamesService
  ) {}
  async create(createSetDto: CreateSetDto) {
    const newSet = await this.prismaService.set.create({
      data: {
        match: {
          connect: {
            id: createSetDto.matchId,
          },
        },
        doubles: {
          connect: createSetDto.doublesIds.map((id) => ({ id })),
        },
      },
    });
    return newSet;
  }

  async findAll() {
    return await this.prismaService.set.findMany({
      select: {
        match: true,
        id: true,
        isFinished: true,
        result: true,
        doubles: true,
        games: true,
        _count: true,
      },
    });
  }

  async findOne(id: string) {
    const set = this.prismaService.set.findUnique({
      where: { id: id },
      select: {
        id: true,
        isFinished: true,
        type: true,
        doubles: true,
      },
    });
    if (!set) {
      throw new HttpException("Set not found", HttpStatus.NOT_FOUND);
    }
    return set;
  }

  update(id: number, updateSetDto: UpdateSetDto) {
    return `This action updates a #${id} set`;
  }

  async setFinished(id: string, setFinishedDto: SetFinishedDto) {
    const set = await this.prismaService.set.findUnique({
      where: {
        id: id,
      },
    });

    if (!set) {
      throw new HttpException("Set not found", HttpStatus.NOT_FOUND);
    }

    if (set.isFinished) {
      throw new HttpException("This set is finished", HttpStatus.BAD_REQUEST);
    }

    for (let i = 0; i < setFinishedDto.doublesOneGames; i++) {
      await this.gamesService.create({
        setId: set.id,
        winnerDoublesId: setFinishedDto.doublesOneId,
      });
    }

    for (let i = 0; i < setFinishedDto.doublesTwoGames; i++) {
      await this.gamesService.create({
        setId: set.id,
        winnerDoublesId: setFinishedDto.doublesTwoId,
      });
    }

    const updatedSet = await this.prismaService.set.update({
      where: {
        id: id,
      },
      data: {
        isFinished: true,
        result: `${setFinishedDto.doublesOneGames}x${setFinishedDto.doublesTwoGames}`,
        winner: {
          connect: {
            id: setFinishedDto.winnerDoublesId,
          },
        },
      },
    });
    return updatedSet;
  }

  remove(id: number) {
    return `This action removes a #${id} set`;
  }
}
