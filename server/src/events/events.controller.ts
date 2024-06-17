import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseGuards,
  HttpStatus,
  HttpCode,
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
import {
  ApiBearerAuth,
  ApiCreatedResponse,
  ApiOkResponse,
  ApiTags,
} from "@nestjs/swagger";
import { HandleDoublesRequestToEventDto } from "./dto/handle-request.dto";
import { EndGroupsStageDto } from "./dto/end-groups-stage.dto";
import { CreateFinalsDto } from "./dto/create-finals.dto";

@Controller("events")
@ApiTags("events")
export class EventsController {
  constructor(private readonly eventsService: EventsService) {}

  @Post()
  @HttpCode(HttpStatus.CREATED)
  @ApiCreatedResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async create(@Body() createEventDto: CreateEventDto) {
    return await this.eventsService.createEvent(createEventDto);
  }

  @Patch("update-event")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async update(@Body() updateEventDto: UpdateEventDto) {
    return await this.eventsService.updateEvent(updateEventDto);
  }

  @Post("event-by-id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async getEventById(@Body() getEventByIdDto: GetEventByIdDto) {
    return await this.eventsService.getEventById(getEventByIdDto);
  }

  @Post("activate-event")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async activateEventAutoPop(@Body() activateEventDto: ActivateEventDto) {
    return await this.eventsService.activateEvent(activateEventDto);
  }

  @Post("end-groups-stage")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async endGroupsStage(@Body() endGroupsStageDto: EndGroupsStageDto) {
    return await this.eventsService.endGroupsStage(endGroupsStageDto.id);
  }

  @Post("create-finals")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async createFinalsMatches(@Body() createFinalsDto: CreateFinalsDto) {
    return await this.eventsService.createFinalsMatches(createFinalsDto.id);
  }

  @Post("register")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async registerDoublesInEvent(
    @Body() registerDoublesInEventDto: RegisterDoublesInEventDto
  ) {
    return await this.eventsService.registerDoublesInEvent(
      registerDoublesInEventDto
    );
  }

  @Post("request")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN", "USER"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async doublesRequestToEvent(
    @Body() registerDoublesInEventDto: RegisterDoublesInEventDto
  ) {
    return await this.eventsService.doublesRequestToEvent(
      registerDoublesInEventDto
    );
  }

  @Post("handle-request")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async handleDoublesRequestToEvent(
    @Body() handleDoublesRequestToEventDto: HandleDoublesRequestToEventDto
  ) {
    return await this.eventsService.handleRequest(
      handleDoublesRequestToEventDto
    );
  }

  @Post("delete-doubles")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async deleteDoublesInEvent(
    @Body() deleteDoublesInEventDto: DeleteDoublesInEventDto
  ) {
    return await this.eventsService.deleteDoublesInEvent(
      deleteDoublesInEventDto
    );
  }

  @Get()
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async findAllEvents() {
    return await this.eventsService.findAllEvents();
  }

  @Get(":id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async findOne(@Param("id") id: string) {
    return this.eventsService.getEventByIdParam(id);
  }

  @Get("/event-info/:id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN", "USER"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async getEventInfo(@Param("id") id: string) {
    return this.eventsService.getEventInfoForGenerateMatches(id);
  }

  @Get("/requests/:id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async getEventRequests(@Param("id") id: string) {
    return this.eventsService.getEventRequests(id);
  }

  @Delete(":id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async remove(@Param("id") id: string) {
    return this.eventsService.remove(+id);
  }
}
