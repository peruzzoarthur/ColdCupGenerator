import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from "@nestjs/common";
import { EventMatchesService } from "./event-matches.service";
import { CreateEventMatchDto } from "./dto/create-event-match.dto";
import { UpdateEventMatchDto } from "./dto/update-event-match.dto";

@Controller("event-matches")
export class EventMatchesController {
  constructor(private readonly eventMatchesService: EventMatchesService) {}

  @Post()
  create(@Body() createEventMatchDto: CreateEventMatchDto) {
    return this.eventMatchesService.create(createEventMatchDto);
  }

  @Get()
  findAll() {
    return this.eventMatchesService.findAll();
  }

  @Get(":id")
  findOne(@Param("id") id: string) {
    return this.eventMatchesService.findOne(id);
  }

  @Patch(":id")
  update(
    @Param("id") id: string,
    @Body() updateEventMatchDto: UpdateEventMatchDto
  ) {
    return this.eventMatchesService.update(+id, updateEventMatchDto);
  }

  @Delete(":id")
  remove(@Param("id") id: string) {
    return this.eventMatchesService.remove(+id);
  }
}
