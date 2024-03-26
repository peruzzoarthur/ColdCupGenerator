import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from "@nestjs/common";
import { DoublesService } from "./doubles.service";
import { CreateDoubleDto } from "./dto/create-double.dto";
import { UpdateDoubleDto } from "./dto/update-double.dto";
import { GetDoublesByIdDto } from "./dto/get-doubles-by-id.dto";

@Controller("doubles")
export class DoublesController {
  constructor(private readonly doublesService: DoublesService) {}

  @Post()
  create(@Body() createDoubleDto: CreateDoubleDto) {
    return this.doublesService.createDouble(createDoubleDto);
  }

  @Get()
  findAll() {
    return this.doublesService.findAllDoubles();
  }

  @Post("doubles-by-id")
  async getDoublesById(@Body() getDoublesByIdDto: GetDoublesByIdDto) {
    return await this.doublesService.getDoublesById(getDoublesByIdDto);
  }

  @Patch(":id")
  update(@Param("id") id: string, @Body() updateDoubleDto: UpdateDoubleDto) {
    return this.doublesService.updateCategory(id, updateDoubleDto);
  }

  @Delete(":id")
  remove(@Param("id") id: string) {
    return this.doublesService.deleteDoubles(id);
  }
}
