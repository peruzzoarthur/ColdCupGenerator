import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  HttpCode,
  HttpStatus,
  UseGuards,
  Request,
} from "@nestjs/common";
import { InvitesService } from "./invites.service";
import { CreateInviteDto } from "./dto/create-invite.dto";
import { UpdateInviteDto } from "./dto/update-invite.dto";
import { ApiBearerAuth, ApiOkResponse, ApiTags } from "@nestjs/swagger";
import { Roles } from "src/auth/roles.decorator";
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { RolesGuard } from "src/auth/roles.guard";
import { JwtPayload } from "src/auth/types/auth.types";
import { CreateDoublesInviteDto } from "./dto/create-doubles-invite.dto";
import { RespondDoublesInviteDto } from "./dto/respond-doubles-invite.dto";
import { CancelDoublesInviteDto } from "./dto/cancel-doubles-invite.dto";
import { CreateEventInviteDto } from "./dto/create-event-invite.dto";
import { RespondEventInviteDto } from "./dto/respond-event-invite.dto";
import { CancelEventInviteDto } from "./dto/cancel-event-invite.dto";

@Controller("invites")
@ApiTags("invites")
export class InvitesController {
  constructor(private readonly invitesService: InvitesService) {}

  @Post("doubles-invite")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  createDoublesInvitation(
    @Request() req: JwtPayload,
    @Body() createDoublesInviteDto: CreateDoublesInviteDto
  ) {
    return this.invitesService.createDoublesInvitation(
      req.user.id,
      createDoublesInviteDto
    );
  }

  @Post("event-invite")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  createEventInvitation(
    @Request() req: JwtPayload,
    @Body() createEventInviteDto: CreateEventInviteDto
  ) {
    return this.invitesService.createEventInvitation(
      req.user.id,
      createEventInviteDto
    );
  }

  @Post("respond-doubles-invite")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  respondDoublesInvitation(
    @Request() req: JwtPayload,
    @Body() respondDoublesInviteDto: RespondDoublesInviteDto
  ) {
    return this.invitesService.respondDoublesInvitation(
      req.user.id,
      respondDoublesInviteDto
    );
  }

  @Post("respond-event-invite")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  respondEventInvitation(
    @Request() req: JwtPayload,
    @Body() respondEventInviteDto: RespondEventInviteDto
  ) {
    return this.invitesService.respondEventInvitation(
      req.user.id,
      respondEventInviteDto
    );
  }

  @Post("cancel-doubles-invite")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  cancelDoublesInvitation(
    @Request() req: JwtPayload,
    @Body() cancelDoublesInviteDto: CancelDoublesInviteDto
  ) {
    return this.invitesService.cancelDoublesInvitation(
      req.user.id,
      cancelDoublesInviteDto
    );
  }

  @Post("cancel-event-invite")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  cancelEventInvitation(
    @Request() req: JwtPayload,
    @Body() cancelEventInviteDto: CancelEventInviteDto
  ) {
    return this.invitesService.cancelEventInvitation(
      req.user.id,
      cancelEventInviteDto
    );
  }

  @Get()
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  findAll() {
    return this.invitesService.findAll();
  }

  @Get(":id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  findOne(@Param("id") id: string) {
    return this.invitesService.findOne(+id);
  }

  @Patch(":id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  update(@Param("id") id: string, @Body() updateInviteDto: UpdateInviteDto) {
    return this.invitesService.update(+id, updateInviteDto);
  }

  @Delete(":id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  remove(@Param("id") id: string) {
    return this.invitesService.remove(+id);
  }
}
