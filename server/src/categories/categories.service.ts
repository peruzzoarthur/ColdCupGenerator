import { Injectable } from "@nestjs/common";
import { CreateCategoryDto } from "./dto/create-category.dto";
import { UpdateCategoryDto } from "./dto/update-category.dto";
import { PrismaService } from "../prisma.service";
import { CatType } from "./types/categories.types";
import { GetCategoryByIdDto } from "./dto/get-category-by-id.dto";

@Injectable()
export class CategoriesService {
  constructor(private readonly prismaService: PrismaService) {}
  async create(createCategoryDto: CreateCategoryDto) {
    const newCat = await this.prismaService.category.create({
      data: {
        level: createCategoryDto.level,
        type: createCategoryDto.type as CatType,
      },
    });
    return newCat;
  }

  async findAll() {
    return await this.prismaService.category.findMany({
      select: {
        id: true,
        level: true,
        type: true,
        players: true,
        doubles: true,
      },
    });
  }

  findOne(id: number) {
    return `This action returns a #${id} category`;
  }

  update(id: number, updateCategoryDto: UpdateCategoryDto) {
    return `This action updates a #${id} category`;
  }

  remove(id: number) {
    return `This action removes a #${id} category`;
  }

  async getCategoryByQuery(level: number, type: CatType) {
    const id = await this.prismaService.category.findFirstOrThrow({
      where: {
        level: level,
        type: type,
      },
    });
    return id;
  }

  async getCategoryById(getCategoryByIdDto: GetCategoryByIdDto) {
    const category = await this.prismaService.category.findUnique({
      where: {
        id: getCategoryByIdDto.id,
      },
      select: {
        id: true,
        type: true,
        level: true,
      },
    });
    return category;
  }
}
