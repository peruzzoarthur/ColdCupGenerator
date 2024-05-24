import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseGuards,
  HttpCode,
  HttpStatus,
} from "@nestjs/common";
import { DoublesService } from "./doubles.service";
import { CreateDoubleDto } from "./dto/create-double.dto";
import { UpdateDoubleDto } from "./dto/update-double.dto";
import { GetDoublesByIdDto } from "./dto/get-doubles-by-id.dto";
import {
  ApiBearerAuth,
  ApiCreatedResponse,
  ApiOkResponse,
  ApiTags,
} from "@nestjs/swagger";
import { Roles } from "src/auth/roles.decorator";
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { RolesGuard } from "src/auth/roles.guard";

@Controller("doubles")
@ApiTags("doubles")
export class DoublesController {
  constructor(private readonly doublesService: DoublesService) {}
  @Get()
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  findAll() {
    return this.doublesService.findAllDoubles();
  }

  @Post("doubles-by-id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async getDoublesById(@Body() getDoublesByIdDto: GetDoublesByIdDto) {
    return await this.doublesService.getDoublesById(getDoublesByIdDto);
  }

  @Post()
  @HttpCode(HttpStatus.CREATED)
  @ApiCreatedResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  create(@Body() createDoubleDto: CreateDoubleDto) {
    return this.doublesService.createDouble(createDoubleDto);
  }

  @Patch(":id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  update(@Param("id") id: string, @Body() updateDoubleDto: UpdateDoubleDto) {
    return this.doublesService.updateCategory(id, updateDoubleDto);
  }

  @Delete(":id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  remove(@Param("id") id: string) {
    return this.doublesService.deleteDoubles(id);
  }
}
