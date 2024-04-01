import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from "@nestjs/common";
import { SetsService } from "./sets.service";
import { CreateSetDto } from "./dto/create-set.dto";
import { UpdateSetDto } from "./dto/update-set.dto";
import { SetFinishedDto } from "./dto/set-finished.dto";

@Controller("sets")
export class SetsController {
  constructor(private readonly setsService: SetsService) {}

  @Post()
  async create(@Body() createSetDto: CreateSetDto) {
    return await this.setsService.create(createSetDto);
  }

  @Get()
  async findAll() {
    return await this.setsService.findAll();
  }

  @Get(":id")
  findOne(@Param("id") id: string) {
    return this.setsService.findOne(id);
  }

  @Patch(":id")
  update(@Param("id") id: string, @Body() updateSetDto: UpdateSetDto) {
    return this.setsService.update(+id, updateSetDto);
  }

  @Patch("/finish-set/:id")
  async matchFinished(
    @Param("id") id: string,
    @Body() setFinishedDto: SetFinishedDto
  ) {
    return await this.setsService.setFinished(id, setFinishedDto);
  }

  @Delete(":id")
  remove(@Param("id") id: string) {
    return this.setsService.remove(+id);
  }
}
