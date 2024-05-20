import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseGuards,
} from "@nestjs/common";
import { EventsService } from "./events.service";
import { CreateEventDto } from "./dto/create-event.dto";
import { UpdateEventDto } from "./dto/update-event.dto";
import { RegisterDoublesInEventDto } from "./dto/register-doubles-event.dto";
import { GetEventByIdDto } from "./dto/get-event-by-id.dto";
import { CreateScheduleDto } from "./dto/create-schedule.dto";
import { ActivateEventDto } from "./dto/activate-event.dto";
import { DeleteDoublesInEventDto } from "./dto/delete-doubles.dto";
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { RolesGuard } from "src/auth/roles.guard";
import { Roles } from "src/auth/roles.decorator";

@Controller("events")
export class EventsController {
  constructor(private readonly eventsService: EventsService) {}

  @Post()
  async create(@Body() createEventDto: CreateEventDto) {
    return await this.eventsService.createEvent(createEventDto);
  }

  @Patch("update-event")
  async update(@Body() updateEventDto: UpdateEventDto) {
    return await this.eventsService.updateEvent(updateEventDto);
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

  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
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

  @Delete(":id")
  async remove(@Param("id") id: string) {
    return this.eventsService.remove(+id);
  }
}
