import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from "@nestjs/common";
import { EventsService } from "./events.service";
import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
import { CreateScheduleDto } from "./dto/create-schedule.dto";
import { ActivateEventDto } from "./dto/activate-event.dto";

@Controller("events")
export class EventsController {
  constructor(private readonly eventsService: EventsService) {}

  @Post()
  async create(@Body() createEventDto: CreateEventDto) {
    return await this.eventsService.createEvent(createEventDto);
  }

  // @Post("test")
  // async createScheduleTest(@Body() createScheduleDto: CreateScheduleDto) {
  //   return await this.eventsService.createScheduleTest(createScheduleDto);
  // }

  @Post("event-by-id")
  async getEventById(@Body() getEventByIdDto: GetEventByIdDto) {
    return await this.eventsService.getEventById(getEventByIdDto);
  }

  @Post("activate-event")
  async activateEvent(@Body() activateEventDto: ActivateEventDto) {
    return await this.eventsService.activateEvent(activateEventDto);
  }

  @Post("register")
  async registerDoublesInEvent(
    @Body() registerDoublesInEventDto: RegisterDoublesInEventDto
  ) {
    console.log("registering");
    return await this.eventsService.registerDoublesInEvent(
      registerDoublesInEventDto
    );
  }

  @Get()
  async findAllEvents() {
    return await this.eventsService.findAllEvents();
  }

  @Get(":id")
  findOne(@Param("id") id: string) {
    return this.eventsService.getEventByIdParam(id);
  }

  @Patch(":id")
  update(@Param("id") id: string, @Body() updateEventDto: UpdateEventDto) {
    return this.eventsService.update(+id, updateEventDto);
  }

  @Delete(":id")
  remove(@Param("id") id: string) {
    return this.eventsService.remove(+id);
  }
}
