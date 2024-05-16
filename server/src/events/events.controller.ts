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
import { DeleteDoublesInEventDto } from "./dto/delete-doubles.dto";

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
  async activateEventAutoPop(@Body() activateEventDto: ActivateEventDto) {
    return await this.eventsService.activateEvent(activateEventDto);
  }

  // @Post("activate-event-no-populate")
  // async activateEventNoPop(@Body() activateEventDto: ActivateEventDto) {
  //   return await this.eventsService.activateEventWithoutAutoPopulate(
  //     activateEventDto
  //   );
  // }

  @Post("register")
  async registerDoublesInEvent(
    @Body() registerDoublesInEventDto: RegisterDoublesInEventDto
  ) {
    return await this.eventsService.registerDoublesInEvent(
      registerDoublesInEventDto
    );
  }

  @Post("delete-doubles")
  async deleteDoublesInEvent(
    @Body() deleteDoublesInEventDto: DeleteDoublesInEventDto
  ) {
    return await this.eventsService.deleteDoublesInEvent(
      deleteDoublesInEventDto
    );
  }

  @Get()
  async findAllEvents() {
    return await this.eventsService.findAllEvents();
  }

  @Get(":id")
  async findOne(@Param("id") id: string) {
    return this.eventsService.getEventByIdParam(id);
  }

  @Get("/event-info/:id")
  async getEventInfo(@Param("id") id: string) {
    return this.eventsService.getEventInfoForGenerateMatches(id);
  }

  @Patch(":id")
  async update(
    @Param("id") id: string,
    @Body() updateEventDto: UpdateEventDto
  ) {
    return this.eventsService.update(+id, updateEventDto);
  }

  @Delete(":id")
  async remove(@Param("id") id: string) {
    return this.eventsService.remove(+id);
  }
}
