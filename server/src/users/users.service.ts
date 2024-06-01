import { HttpException, HttpStatus, Injectable } from "@nestjs/common";
import { CreateUserDto } from "./dto/create-user.dto";
import { UpdateUserDto } from "./dto/update-user.dto";
import { PrismaService } from "src/prisma.service";
import * as argon from "argon2";
import { ConnectToPlayerDto } from "./dto/connect-to-player.dto";

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) {}
  async create(createUserDto: CreateUserDto) {
    const hashedPassword = await argon.hash(createUserDto.password);

    createUserDto.password = hashedPassword;

    const dob = new Date(createUserDto.dob);

    return await this.prisma.user.create({
      data: { ...createUserDto, dob: dob },
    });
  }

  async findAll() {
    return await this.prisma.user.findMany();
  }

  async findOne(email: string) {
    return await this.prisma.user.findUnique({ where: { email: email } });
  }

  async updatePassword(id: string, updateUserDto: UpdateUserDto) {
    // if (updateUserDto.password) {
    //   updateUserDto.password = await argon.hash(updateUserDto.password);
    // }
    return await this.prisma.user.update({
      where: { id: id },
      data: updateUserDto,
    });
  }

  async updateProfileImage(id: string, profileImage: Express.Multer.File) {
    const bufferData = profileImage.buffer;
    const base64String = Buffer.from(bufferData).toString("base64");
    const image = `data:image/jpeg;base64,${base64String}`;
    return await this.prisma.user.update({
      where: {
        id: id,
      },
      data: {
        profileImage: image,
      },
    });
  }

  async setAdmin(id: string) {
    const user = await this.prisma.user.findUnique({
      where: {
        id: id,
      },
    });
    if (!user) {
      throw new HttpException("No user", HttpStatus.NOT_FOUND);
    }
    if (user.role === "ADMIN") {
      throw new HttpException("Already admin", HttpStatus.CONFLICT);
    }
    return await this.prisma.user.update({
      where: {
        id: user.id,
      },
      data: {
        role: "ADMIN",
      },
    });
  }

  async connectToPlayer(
    connectToPlayerDto: ConnectToPlayerDto,
    userId: string
  ) {
    let user = await this.prisma.user.findUniqueOrThrow({
      where: { id: userId },
    });
    if (!user) {
      throw new HttpException("No user", HttpStatus.NOT_FOUND);
    }
    if (user.playerId) {
      throw new HttpException(
        "This user is already linked as Player",
        HttpStatus.CONFLICT
      );
    }
    const newPlayer = await this.prisma.player.create({
      data: {
        firstName: connectToPlayerDto.firstName,
        lastName: connectToPlayerDto.lastName,
        position: connectToPlayerDto.position,
        categories: {
          connect: {
            id: connectToPlayerDto.categoryId,
          },
        },
        user: {
          connect: {
            id: userId,
          },
        },
      },
      select: {
        user: true,
      },
    });
    user = await this.prisma.user.findUniqueOrThrow({
      where: { id: newPlayer.user.id },
    });
    return user;
  }
  async remove(id: string) {
    return await this.prisma.user.delete({ where: { id: id } });
  }
}
