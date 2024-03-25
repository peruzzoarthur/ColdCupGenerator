import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Put,
  // Post,
  // Body,
  // Patch,
  // Param,
  // Delete,
} from "@nestjs/common";
import { PlayerService } from "./player.service";
import { CreatePlayerDto } from "./dto/create-player.dto";
import { UpdatePlayerDto } from "./dto/update-player.dto";

// import { CreatePrismaDto } from './dto/create-prisma.dto';
// import { UpdatePrismaDto } from './dto/update-prisma.dto';

@Controller("player")
export class PlayerController {
  constructor(private readonly playerService: PlayerService) {}

  @Get(":id")
  async getPlayersByCategory(@Param() { id }: { id: string }) {
    return await this.playerService.getPlayersByCategory(id);
  }
  @Get()
  async getAllPlayers() {
    return await this.playerService.getAllPlayers();
  }

  @Post("/create-player/")
  async createPost(@Body() createPlayerDto: CreatePlayerDto) {
    return await this.playerService.createPlayer(createPlayerDto);
  }

  @Put("/update/:id")
  async publishPlayer(
    @Param() { id }: { id: string },
    @Body() updatePlayerDto: UpdatePlayerDto
  ) {
    console.log("a");
    console.log(`${id}`);
    return null;
  }

  @Delete(":id")
  async deletePlayer(@Param() { id }: { id: string }) {
    return await this.playerService.deletePlayer(id);
  }
}
