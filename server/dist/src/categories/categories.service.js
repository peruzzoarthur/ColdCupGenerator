"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.CategoriesService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma.service");
let CategoriesService = class CategoriesService {
    constructor(prismaService) {
        this.prismaService = prismaService;
    }
    async create(createCategoryDto) {
        console.log(createCategoryDto);
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
    findOne(id) {
        return `This action returns a #${id} category`;
    }
    update(id, updateCategoryDto) {
        return `This action updates a #${id} category`;
    }
    remove(id) {
        return `This action removes a #${id} category`;
    }
    async getCategoryByQuery(level, type) {
        const id = await this.prismaService.category.findFirstOrThrow({
            where: {
                level: level,
                type: type,
            },
        });
        return id;
    }
    async getCategoryById(getCategoryByIdDto) {
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
};
exports.CategoriesService = CategoriesService;
exports.CategoriesService = CategoriesService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], CategoriesService);
//# sourceMappingURL=categories.service.js.map