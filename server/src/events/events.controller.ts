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
import { ActivateEventDto } from "./dto/activate-event.dto";
import { DeleteDoublesInEventDto } from "./dto/delete-doubles.dto";
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { RolesGuard } from "src/auth/roles.guard";
import { Roles } from "src/auth/roles.decorator";
import { ApiCreatedResponse, ApiOkResponse, ApiTags } from "@nestjs/swagger";

@Controller("events")
@ApiTags("events")
export class EventsController {
  constructor(private readonly eventsService: EventsService) {}

  @Post()
  @ApiCreatedResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  async create(@Body() createEventDto: CreateEventDto) {
    return await this.eventsService.createEvent(createEventDto);
  }

  @Patch("update-event")
  @ApiOkResponse()
  async update(@Body() updateEventDto: UpdateEventDto) {
    return await this.eventsService.updateEvent(updateEventDto);
  }

  @Post("event-by-id")
  @ApiOkResponse()
  async getEventById(@Body() getEventByIdDto: GetEventByIdDto) {
    return await this.eventsService.getEventById(getEventByIdDto);
  }

  @Post("activate-event")
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  async activateEventAutoPop(@Body() activateEventDto: ActivateEventDto) {
    return await this.eventsService.activateEvent(activateEventDto);
  }

  @Post("register")
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  async registerDoublesInEvent(
    @Body() registerDoublesInEventDto: RegisterDoublesInEventDto
  ) {
    return await this.eventsService.registerDoublesInEvent(
      registerDoublesInEventDto
    );
  }

  @Post("delete-doubles")
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
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
  @ApiOkResponse()
  async findOne(@Param("id") id: string) {
    return this.eventsService.getEventByIdParam(id);
  }

  @Get("/event-info/:id")
  @ApiOkResponse()
  async getEventInfo(@Param("id") id: string) {
    return this.eventsService.getEventInfoForGenerateMatches(id);
  }

  @Delete(":id")
  @ApiOkResponse()
  async remove(@Param("id") id: string) {
    return this.eventsService.remove(+id);
  }
}
