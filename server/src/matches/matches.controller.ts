import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from "@nestjs/common";
import { MatchesService } from "./matches.service";
import { CreateMatchDto } from "./dto/create-match.dto";
import { UpdateMatchDto } from "./dto/update-match.dto";
import { MatchFinishedDto } from "./dto/match-finished.dto";

@Controller("matches")
export class MatchesController {
  constructor(private readonly matchesService: MatchesService) {}

  @Post()
  async create(@Body() createMatchDto: CreateMatchDto) {
    return await this.matchesService.create(createMatchDto);
  }

  @Get()
  async findAll() {
    return await this.matchesService.findAll();
  }

  @Get("/result/:id")
  async findResult(@Param("id") id: string) {
    return await this.matchesService.findResult(id);
  }

  @Get(":id")
  async findOne(@Param("id") id: string) {
    return await this.matchesService.findOne(id);
  }

  @Patch("/update-match-date/:id")
  update(@Param("id") id: string, @Body() updateMatchDto: UpdateMatchDto) {
    return this.matchesService.updateMatchDate(id, updateMatchDto);
  }

  @Patch("/finish-match/:id")
  async matchFinished(
    @Param("id") id: string,
    @Body() matchFinishedDto: MatchFinishedDto
  ) {
    return await this.matchesService.matchFinished(id, matchFinishedDto);
  }

  @Delete(":id")
  remove(@Param("id") id: string) {
    return this.matchesService.remove(+id);
  }
}
