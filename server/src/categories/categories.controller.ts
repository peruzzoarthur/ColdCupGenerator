import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Query,
  HttpCode,
  HttpStatus,
  UseGuards,
} from "@nestjs/common";
import { CategoriesService } from "./categories.service";
import { CreateCategoryDto } from "./dto/create-category.dto";
import { UpdateCategoryDto } from "./dto/update-category.dto";
import { CatType } from "./types/categories.types";
import { GetCategoryByIdDto } from "./dto/get-category-by-id.dto";
import {
  ApiBearerAuth,
  ApiCreatedResponse,
  ApiOkResponse,
  ApiTags,
} from "@nestjs/swagger";
import { Roles } from "src/auth/roles.decorator";
import { JwtAuthGuard } from "src/auth/jwt-auth.guard";
import { RolesGuard } from "src/auth/roles.guard";
@Controller("categories")
@ApiTags("categories")
export class CategoriesController {
  constructor(private readonly categoriesService: CategoriesService) {}
  @Get()
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async findAll() {
    return await this.categoriesService.findAll();
  }

  @Post("category-by-id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async getCategoryById(@Body() getCategoryByIdDto: GetCategoryByIdDto) {
    return await this.categoriesService.getCategoryById(getCategoryByIdDto);
  }
  @Get("id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["USER", "ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async getCategoryByQuery(
    @Query("level") level: number,
    @Query("type") type: CatType
  ) {
    return await this.categoriesService.getCategoryByQuery(Number(level), type);
  }

  @Post()
  @HttpCode(HttpStatus.CREATED)
  @ApiCreatedResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async create(@Body() createCategoryDto: CreateCategoryDto) {
    return await this.categoriesService.create(createCategoryDto);
  }

  @Patch(":id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  update(
    @Param("id") id: string,
    @Body() updateCategoryDto: UpdateCategoryDto
  ) {
    return this.categoriesService.update(+id, updateCategoryDto);
  }

  @Delete(":id")
  @HttpCode(HttpStatus.OK)
  @ApiOkResponse()
  @Roles(["ADMIN"])
  @UseGuards(JwtAuthGuard)
  @UseGuards(RolesGuard)
  @ApiBearerAuth()
  async remove(@Param("id") id: string) {
    return await this.categoriesService.remove(id);
  }
}
