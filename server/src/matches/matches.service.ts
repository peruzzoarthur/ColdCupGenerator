import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreateMatchDto } from "./dto/create-match.dto";
import { UpdateMatchDto } from "./dto/update-match.dto";
import { PrismaService } from "src/prisma.service";
import { MatchFinishedDto } from "./dto/match-finished.dto";
import { SetsService } from "src/sets/sets.service";
import { Match, Set } from "@prisma/client";

@Injectable()
export class MatchesService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly setsService: SetsService
  ) {}
  async create(createMatchDto: CreateMatchDto) {
    const match = await this.prismaService.match.create({
      data: {
        doubles: { connect: createMatchDto.doublesIds.map((id) => ({ id })) },
        eventId: createMatchDto.eventId,
        categoryId: createMatchDto.categoryId,
        matchDate: {
          connect: {
            id: createMatchDto.matchDateId,
          },
        }, // ! aaaaaaaaaaaaaa
      },
      select: {
        id: true,
        isFinished: true,
        category: true,
        categoryId: true,
        doubles: true,
        type: true,
        sets: true,
      },
    });

    const superSet: Set = await this.setsService.create({
      doublesOneGames: 0,
      doublesTwoGames: 0,
      matchId: match.id,
      doublesIds: createMatchDto.doublesIds,
      eventId: createMatchDto.eventId,
    });

    console.log(superSet);

    return match;
  }

  async findAll() {
    return this.prismaService.match.findMany({
      select: {
        id: true,
        isFinished: true,
        category: true,
        winner: true,
        eventId: true,
        date: true,
        type: true,
        sets: true,
        matchDate: {
          select: {},
        },
      },
    });
  }

  async findOne(id: string) {
    const match = this.prismaService.match.findUnique({
      where: { id: id },
      select: {
        id: true,
        isFinished: true,
        type: true,
        doubles: true,
      },
    });
    if (!match) {
      throw new HttpException("Match not found", HttpStatus.NOT_FOUND);
    }
    return match;
  }

  async findResult(id: string) {
    const match = this.prismaService.match.findUnique({
      where: { id: id },
      select: {
        id: true,
        isFinished: true,
        doubles: true,
        sets: {
          select: {
            games: {
              select: {
                winner: true,
                winnerId: true,
              },
            },
            id: true,
            winner: true,
          },
        },
      },
    });

    if (!match) {
      throw new HttpException("Match not found", HttpStatus.NOT_FOUND);
    }

    if ((await match).isFinished === null) {
      return;
    }

    const querySet = await match.sets({
      select: {
        games: {
          select: { winner: true },
        },
      },
    });

    const games = querySet.flatMap((s) => s.games);

    const doubles = await match.doubles();

    const doublesOneId = doubles[0].id;
    const doublesTwoId = doubles[1].id;
    const doublesOneGames = games.filter(
      (game) => game.winner.id === doublesOneId
    );
    console.log(doublesOneGames.length);
    const doublesTwoGames = games.filter(
      (game) => game.winner.id === doublesTwoId
    );
    return {
      doublesOneGames: doublesOneGames.length,
      doublesTwoGames: doublesTwoGames.length,
    };
  }
  async update(id: string, updateMatchDto: UpdateMatchDto) {
    return `This action updates a #${id} match`;
  }

  async matchFinished(id: string, matchFinishedDto: MatchFinishedDto) {
    const match = await this.prismaService.match.findUnique({
      where: {
        id: id,
      },
      select: {
        id: true,
        doubles: true,
        sets: true,
      },
    });
    console.log(match);

    if (!match) {
      throw new HttpException("Match not found", HttpStatus.NOT_FOUND);
    }

    const setFinished = await this.setsService.setFinished(
      match.sets[0].id,
      matchFinishedDto
    );
    console.log(setFinished);

    const updatedMatch = await this.prismaService.match.update({
      where: {
        id: id,
      },
      data: {
        isFinished: true,
        winnerDoublesId: matchFinishedDto.winnerDoublesId,
      },
    });
    return updatedMatch;
  }

  remove(id: number) {
    return `This action removes a #${id} match`;
  }
}
