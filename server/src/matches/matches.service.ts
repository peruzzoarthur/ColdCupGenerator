import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreateMatchDto } from "./dto/create-match.dto";
import { UpdateMatchDto } from "./dto/update-match.dto";
import { PrismaService } from "src/prisma.service";
import { MatchFinishedDto } from "./dto/match-finished.dto";
import { SetsService } from "src/sets/sets.service";
import { CatType, Match, Set, SetType } from "@prisma/client";

@Injectable()
export class MatchesService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly setsService: SetsService
  ) {}
  async create(createMatchDto: CreateMatchDto) {
    const match = await this.prismaService.match.create({
      data: {
        type: createMatchDto.matchType,
        doubles: { connect: createMatchDto.doublesIds.map((id) => ({ id })) },
        eventId: createMatchDto.eventId,
        categoryId: createMatchDto.categoryId,
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

    if (createMatchDto.matchDateId) {
      await this.prismaService.match.update({
        where: { id: match.id },
        data: {
          matchDate: {
            connect: {
              id: createMatchDto.matchDateId,
            },
          },
        },
      });
    }

    if (createMatchDto.matchType === "SUPERSET") {
      await this.setsService.create({
        doublesOneGames: 0,
        doublesTwoGames: 0,
        matchId: match.id,
        doublesIds: createMatchDto.doublesIds,
        eventId: createMatchDto.eventId,
        setType: SetType.SUPER,
        number: 1,
      });
    }

    if (createMatchDto.matchType === "BO3") {
      for (let i = 0; i < 3; i++) {
        await this.setsService.create({
          number: i + 1,
          doublesOneGames: 0,
          doublesTwoGames: 0,
          matchId: match.id,
          doublesIds: createMatchDto.doublesIds,
          eventId: createMatchDto.eventId,
          setType: SetType.NORMAL,
        });
      }
    }

    if (createMatchDto.matchType === "BO2_SUPERTIE") {
      let count = 0;
      for (let i = 0; i < 2; i++) {
        await this.setsService.create({
          number: count++,
          doublesOneGames: 0,
          doublesTwoGames: 0,
          matchId: match.id,
          doublesIds: createMatchDto.doublesIds,
          eventId: createMatchDto.eventId,
          setType: SetType.NORMAL,
        });
      }
      await this.setsService.create({
        number: count++,
        doublesOneGames: 0,
        doublesTwoGames: 0,
        matchId: match.id,
        doublesIds: createMatchDto.doublesIds,
        eventId: createMatchDto.eventId,
        setType: SetType.SUPERTIEBREAK,
      });
    }
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
        type: true,
        sets: true,
        matchDate: {
          select: {
            id: true,
            eventId: true,
            start: true,
            finish: true,
            matchId: true,
          },
        },
      },
    });
  }

  async findOne(id: string) {
    const match = this.prismaService.match.findUnique({
      where: { id: id },
      select: {
        id: true,
        winner: true,
        winnerDoublesId: true,
        isFinished: true,
        type: true,
        matchDate: true,
        sets: true,
        doubles: {
          select: {
            players: true,
          },
        },
      },
    });
    if (!match) {
      throw new HttpException("Match not found", HttpStatus.NOT_FOUND);
    }
    return match;
  }

  async findResult(id: string) {
    const match = await this.prismaService.match.findUnique({
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

    if (match.isFinished === null) {
      return;
    }

    //! here im handling only one set games... SUPERSET type...

    let doublesA: {
      id: string;
      players: {
        firstName: string;
        lastName: string;
      }[];
      category: {
        id: string;
        level: number;
        type: CatType;
      };
    };

    let doublesB: {
      id: string;
      players: {
        firstName: string;
        lastName: string;
      }[];
      category: {
        id: string;
        level: number;
        type: CatType;
      };
    };
    const set = match.sets;

    const doublesAID = match.doubles[0]?.id;
    if (doublesAID) {
      doublesA = await this.prismaService.double.findUnique({
        where: { id: doublesAID },
        select: {
          id: true,
          category: true,
          players: {
            select: {
              firstName: true,
              lastName: true,
            },
          },
        },
      });
    }
    const doublesBID = match.doubles[1]?.id;
    if (doublesBID) {
      doublesB = await this.prismaService.double.findUnique({
        where: { id: doublesBID },
        select: {
          id: true,
          category: true,
          players: {
            select: {
              firstName: true,
              lastName: true,
            },
          },
        },
      });
    }

    const doublesOne = {
      doubles: doublesA ?? null,
      gamesWon: set[0].games.filter((g) => g.winnerId === doublesAID).length,
    };

    const doublesTwo = {
      doubles: doublesB ?? null,
      gamesWon: set[0].games.filter((g) => g.winnerId === doublesBID).length,
    };
    return {
      doublesOne: doublesOne,
      doublesTwo: doublesTwo,
    };

    // const querySet = match.sets({
    //   select: {
    //     games: {
    //       select: { winner: true },
    //     },
    //   },
    // });

    // const games = querySet.flatMap((s) => s.games);

    // const doubles = await match.doubles();

    // const doublesOneId = doubles[0].id;
    // const doublesTwoId = doubles[1].id;
    // const doublesOneGames = games.filter(
    //   (game) => game.winner.id === doublesOneId
    // );
    // console.log(doublesOneGames.length);
    // const doublesTwoGames = games.filter(
    //   (game) => game.winner.id === doublesTwoId
    // );
    // return {
    //   doublesOneGames: doublesOneGames.length,
    //   doublesTwoGames: doublesTwoGames.length,
    // };
  }
  async update(id: string, updateMatchDto: UpdateMatchDto) {
    return `This action updates a #${id} match`;
  }

  async updateMatchDate(id: string, updateMatchDto: UpdateMatchDto) {
    let match = await this.prismaService.match.findUnique({
      where: {
        id: id,
      },
      select: {
        id: true,
        matchDate: {
          select: {
            id: true,
            start: true,
          },
        },
      },
    });

    if (match.matchDate === null) {
      await this.prismaService.match.update({
        where: { id: id },
        data: {
          matchDate: {
            connect: {
              id: updateMatchDto.matchDateId,
            },
          },
        },
      });
      return;
    }
    // console.log(`Before: ${match.matchDate.id}`);

    if (match.matchDate.id !== null) {
      await this.prismaService.matchDate.update({
        where: {
          id: match.matchDate.id,
        },
        data: {
          matchId: null,
        },
      });
    }

    await this.prismaService.match.update({
      where: { id: id },
      data: {
        matchDate: {
          connect: {
            id: updateMatchDto.matchDateId,
          },
        },
      },
    });

    match = await this.prismaService.match.findUnique({
      where: {
        id: id,
      },
      select: {
        id: true,
        matchDate: {
          select: {
            id: true,
            start: true,
          },
        },
      },
    });

    // console.log(`After: ${match.matchDate.id}`);

    return match;
  }

  async finishMatch(id: string, matchFinishedDto: MatchFinishedDto) {
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
    // console.log(match);

    if (!match) {
      throw new HttpException("Match not found", HttpStatus.NOT_FOUND);
    }

    //! need to test this loop for matches that require more sets... the dto will have to receive data for different sets
    for (let i = 0; i < match.sets.length; i++) {
      await this.setsService.finishSet(match.sets[i].id, matchFinishedDto);
    }

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
