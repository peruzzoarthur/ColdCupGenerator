import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { UpdateInviteDto } from "./dto/update-invite.dto";
import { PrismaService } from "src/prisma.service";
import { CreateDoublesInviteDto } from "./dto/create-doubles-invite.dto";
import { RespondDoublesInviteDto } from "./dto/respond-doubles-invite.dto";
import { DoublesService } from "src/doubles/doubles.service";
import { CancelDoublesInviteDto } from "./dto/cancel-doubles-invite.dto";

@Injectable()
export class InvitesService {
  constructor(
    private prisma: PrismaService,
    private doublesService: DoublesService
  ) {}
  async createDoublesInvitation(
    inviterId: string,
    createDoublesInviteDto: CreateDoublesInviteDto
  ) {
    const inviter = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: inviterId,
      },
      select: {
        player: {
          select: {
            id: true,
            invites: {
              select: {
                id: true,
                players: true,
                inviteType: true,
              },
            },
          },
        },
      },
    });

    const invited = await this.prisma.player.findUniqueOrThrow({
      where: {
        id: createDoublesInviteDto.invitedId,
      },
    });

    if (inviter.player.id === invited.id) {
      throw new HttpException(
        "You are already friends with yourself, right?",
        HttpStatus.BAD_REQUEST
      );
    }

    const playersAlreadyInDoubles = await this.prisma.double.findFirst({
      where: {
        AND: [
          {
            players: {
              some: {
                id: inviter.player.id,
              },
            },
          },
          {
            players: {
              some: {
                id: invited.id,
              },
            },
          },
        ],
      },
    });

    if (playersAlreadyInDoubles) {
      throw new HttpException(
        "Players already in doubles",
        HttpStatus.CONFLICT
      );
    }

    const newInvite = this.prisma.invite.create({
      data: {
        inviteType: "DOUBLES",
        inviterId: inviter.player.id,
        invitedId: invited.id,
        players: {
          connect: [{ id: inviter.player.id }, { id: invited.id }],
        },
      },
      select: {
        id: true,
        players: {
          select: {
            id: true,
          },
        },
      },
    });

    return newInvite;
  }
  async respondDoublesInvitation(
    userId: string,
    respondDoublesInvitationDto: RespondDoublesInviteDto
  ) {
    const invite = await this.prisma.invite.findUniqueOrThrow({
      where: {
        id: respondDoublesInvitationDto.inviteId,
      },
      select: {
        id: true,
        invitedId: true,
        players: {
          select: {
            id: true,
          },
        },
      },
    });

    const user = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: userId,
      },
    });

    if (user.playerId !== invite.invitedId) {
      throw new HttpException(
        "You must be the invited one in order to respond to an invitation.",
        HttpStatus.UNAUTHORIZED
      );
    }

    if (respondDoublesInvitationDto.accepted) {
      const doubles = await this.doublesService.createDouble({
        playerOneId: invite.players[0].id,
        playerTwoId: invite.players[1].id,
        categoryId: "73054bad-8574-47bf-93f3-48b1c6c7e498",
      });
      await this.prisma.invite.delete({
        where: { id: invite.id },
      });
      return doubles;
    }

    if (!respondDoublesInvitationDto.accepted) {
      return await this.prisma.invite.delete({
        where: {
          id: invite.id,
        },
      });
    }
  }

  async cancelDoublesInvitation(
    userId: string,
    cancelDoublesInvitationDto: CancelDoublesInviteDto
  ) {
    const invite = await this.prisma.invite.findUnique({
      where: {
        id: cancelDoublesInvitationDto.inviteId,
      },
      select: {
        id: true,
        inviterId: true,
        players: {
          select: {
            id: true,
          },
        },
      },
    });

    const user = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: userId,
      },
    });

    if (user.playerId !== invite.inviterId) {
      throw new HttpException(
        "In order to cancel the request, you must be the inviter.",
        HttpStatus.UNAUTHORIZED
      );
    }

    return await this.prisma.invite.delete({
      where: {
        id: invite.id,
      },
    });
  }

  async findAll() {
    return await this.prisma.invite.findMany({
      select: {
        id: true,
        inviterId: true,
        invitedId: true,
        players: {
          select: {
            id: true,
          },
        },
      },
    });
  }

  findOne(id: number) {
    return `This action returns a #${id} invite`;
  }

  update(id: number, updateInviteDto: UpdateInviteDto) {
    return `This action updates a #${id} invite`;
  }

  remove(id: number) {
    return `This action removes a #${id} invite`;
  }
}
