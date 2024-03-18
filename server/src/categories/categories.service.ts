import { Injectable } from "@nestjs/common";
import { CreateCategoryDto } from "./dto/create-category.dto";
import { UpdateCategoryDto } from "./dto/update-category.dto";
import { PrismaService } from "../prisma.service";
import { CatType } from "./types/categories.types";

@Injectable()
export class CategoriesService {
  constructor(private readonly prismaService: PrismaService) {}
  async create(createCategoryDto: CreateCategoryDto) {
    const newCat = await this.prismaService.category.create({
      data: {
        level: createCategoryDto.level,
        type: createCategoryDto.type,
      },
    });
    return newCat;
  }

  async findAll() {
    return await this.prismaService.category.findMany();
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

  async getCategory(level: number, type: CatType) {
    const id = await this.prismaService.category.findFirstOrThrow({
      where: {
        level: level,
        type: type,
      },
    });
    return id;
  }
}
