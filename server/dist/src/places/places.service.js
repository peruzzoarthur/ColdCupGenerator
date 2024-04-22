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
exports.PlacesService = void 0;
const common_1 = require("@nestjs/common");
const prisma_service_1 = require("../prisma.service");
let PlacesService = class PlacesService {
    constructor(prismaService) {
        this.prismaService = prismaService;
    }
    async createPlace(createPlaceDto) {
        const checkAddress = await this.prismaService.place.findUnique({
            where: {
                address: createPlaceDto.address,
            },
        });
        if (checkAddress) {
            throw new common_1.HttpException("Address already registered.", common_1.HttpStatus.CONFLICT);
        }
        const place = await this.prismaService.place.create({
            data: {
                name: createPlaceDto.name,
                address: createPlaceDto.address,
            },
        });
        return place;
    }
    async findAllPlaces() {
        return await this.prismaService.place.findMany({
            select: {
                id: true,
                name: true,
                address: true,
            },
        });
    }
    findOne(id) {
        return `This action returns a #${id} place`;
    }
    update(id, updatePlaceDto) {
        return `This action updates a #${id} place`;
    }
    remove(id) {
        return `This action removes a #${id} place`;
    }
};
exports.PlacesService = PlacesService;
exports.PlacesService = PlacesService = __decorate([
    (0, common_1.Injectable)(),
    __metadata("design:paramtypes", [prisma_service_1.PrismaService])
], PlacesService);
//# sourceMappingURL=places.service.js.map