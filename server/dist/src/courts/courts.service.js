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
exports.CourtsService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma.service");
const client_1 = require("@prisma/client");
const prismaError_1 = require("../utils/prismaError");
let CourtsService = class CourtsService {
    constructor(prismaService) {
        this.prismaService = prismaService;
    }
    async create(createCourtDto) {
        try {
            const newCourt = await this.prismaService.court.create({
                data: {
                    name: createCourtDto.name,
                    placeId: createCourtDto.placeId,
                },
            });
            return newCourt;
        }
        catch (error) {
            if (error instanceof client_1.Prisma.PrismaClientKnownRequestError &&
                error.code === prismaError_1.PrismaError.UniqueConstraintFailed) {
                throw new common_1.HttpException(`Court "${createCourtDto.name}" is already registered at this place.`, common_1.HttpStatus.BAD_REQUEST);
            }
            else {
                throw new common_1.HttpException("Error creating court. Please try again later.", common_1.HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }
    }
    findAll() {
        return `This action returns all courts`;
    }
    findOne(id) {
        return `This action returns a #${id} court`;
    }
    update(id, updateCourtDto) {
        return `This action updates a #${id} court`;
    }
    remove(id) {
        return `This action removes a #${id} court`;
    }
};
exports.CourtsService = CourtsService;
exports.CourtsService = CourtsService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], CourtsService);
//# sourceMappingURL=courts.service.js.map