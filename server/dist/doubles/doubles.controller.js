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
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.DoublesController = void 0;
const common_1 = require("@nestjs/common");
const doubles_service_1 = require("./doubles.service");
const create_double_dto_1 = require("./dto/create-double.dto");
const update_double_dto_1 = require("./dto/update-double.dto");
const get_doubles_by_id_dto_1 = require("./dto/get-doubles-by-id.dto");
let DoublesController = class DoublesController {
    constructor(doublesService) {
        this.doublesService = doublesService;
    }
    create(createDoubleDto) {
        return this.doublesService.createDouble(createDoubleDto);
    }
    findAll() {
        return this.doublesService.findAllDoubles();
    }
    async getDoublesById(getDoublesByIdDto) {
        return await this.doublesService.getDoublesById(getDoublesByIdDto);
    }
    update(id, updateDoubleDto) {
        return this.doublesService.update(+id, updateDoubleDto);
    }
    remove(id) {
        return this.doublesService.remove(+id);
    }
};
exports.DoublesController = DoublesController;
__decorate([
    (0, common_1.Post)(),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [create_double_dto_1.CreateDoubleDto]),
    __metadata("design:returntype", void 0)
], DoublesController.prototype, "create", null);
__decorate([
    (0, common_1.Get)(),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], DoublesController.prototype, "findAll", null);
__decorate([
    (0, common_1.Post)("doubles-by-id"),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [get_doubles_by_id_dto_1.GetDoublesByIdDto]),
    __metadata("design:returntype", Promise)
], DoublesController.prototype, "getDoublesById", null);
__decorate([
    (0, common_1.Patch)(":id"),
    __param(0, (0, common_1.Param)("id")),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, update_double_dto_1.UpdateDoubleDto]),
    __metadata("design:returntype", void 0)
], DoublesController.prototype, "update", null);
__decorate([
    (0, common_1.Delete)(":id"),
    __param(0, (0, common_1.Param)("id")),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", void 0)
], DoublesController.prototype, "remove", null);
exports.DoublesController = DoublesController = __decorate([
    (0, common_1.Controller)("doubles"),
    __metadata("design:paramtypes", [doubles_service_1.DoublesService])
], DoublesController);
//# sourceMappingURL=doubles.controller.js.map