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
exports.SetsController = void 0;
const common_1 = require("@nestjs/common");
const sets_service_1 = require("./sets.service");
const create_set_dto_1 = require("./dto/create-set.dto");
const update_set_dto_1 = require("./dto/update-set.dto");
const set_finished_dto_1 = require("./dto/set-finished.dto");
const swagger_1 = require("@nestjs/swagger");
const roles_decorator_1 = require("../auth/roles.decorator");
const jwt_auth_guard_1 = require("../auth/jwt-auth.guard");
const roles_guard_1 = require("../auth/roles.guard");
let SetsController = class SetsController {
    constructor(setsService) {
        this.setsService = setsService;
    }
    async create(createSetDto) {
        return await this.setsService.create(createSetDto);
    }
    async findAll() {
        return await this.setsService.findAll();
    }
    findOne(id) {
        return this.setsService.findOne(id);
    }
    update(id, updateSetDto) {
        return this.setsService.update(+id, updateSetDto);
    }
    async finishSet(id, setFinishedDto) {
        return await this.setsService.finishSet(id, setFinishedDto);
    }
    remove(id) {
        return this.setsService.remove(+id);
    }
};
exports.SetsController = SetsController;
__decorate([
    (0, common_1.Post)(),
    (0, common_1.HttpCode)(common_1.HttpStatus.CREATED),
    (0, swagger_1.ApiCreatedResponse)(),
    (0, roles_decorator_1.Roles)(["ADMIN"]),
    (0, common_1.UseGuards)(jwt_auth_guard_1.JwtAuthGuard),
    (0, common_1.UseGuards)(roles_guard_1.RolesGuard),
    (0, swagger_1.ApiBearerAuth)(),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [create_set_dto_1.CreateSetDto]),
    __metadata("design:returntype", Promise)
], SetsController.prototype, "create", null);
__decorate([
    (0, common_1.Get)(),
    (0, common_1.HttpCode)(common_1.HttpStatus.OK),
    (0, swagger_1.ApiOkResponse)(),
    (0, roles_decorator_1.Roles)(["USER", "ADMIN"]),
    (0, common_1.UseGuards)(jwt_auth_guard_1.JwtAuthGuard),
    (0, common_1.UseGuards)(roles_guard_1.RolesGuard),
    (0, swagger_1.ApiBearerAuth)(),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", Promise)
], SetsController.prototype, "findAll", null);
__decorate([
    (0, common_1.Get)(":id"),
    (0, common_1.HttpCode)(common_1.HttpStatus.OK),
    (0, swagger_1.ApiOkResponse)(),
    (0, roles_decorator_1.Roles)(["USER", "ADMIN"]),
    (0, common_1.UseGuards)(jwt_auth_guard_1.JwtAuthGuard),
    (0, common_1.UseGuards)(roles_guard_1.RolesGuard),
    (0, swagger_1.ApiBearerAuth)(),
    __param(0, (0, common_1.Param)("id")),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", void 0)
], SetsController.prototype, "findOne", null);
__decorate([
    (0, common_1.Patch)(":id"),
    (0, common_1.HttpCode)(common_1.HttpStatus.OK),
    (0, swagger_1.ApiOkResponse)(),
    (0, roles_decorator_1.Roles)(["ADMIN"]),
    (0, common_1.UseGuards)(jwt_auth_guard_1.JwtAuthGuard),
    (0, common_1.UseGuards)(roles_guard_1.RolesGuard),
    (0, swagger_1.ApiBearerAuth)(),
    __param(0, (0, common_1.Param)("id")),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, update_set_dto_1.UpdateSetDto]),
    __metadata("design:returntype", void 0)
], SetsController.prototype, "update", null);
__decorate([
    (0, common_1.Patch)("/finish-set/:id"),
    (0, common_1.HttpCode)(common_1.HttpStatus.OK),
    (0, swagger_1.ApiOkResponse)(),
    (0, roles_decorator_1.Roles)(["ADMIN"]),
    (0, common_1.UseGuards)(jwt_auth_guard_1.JwtAuthGuard),
    (0, common_1.UseGuards)(roles_guard_1.RolesGuard),
    (0, swagger_1.ApiBearerAuth)(),
    __param(0, (0, common_1.Param)("id")),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, set_finished_dto_1.SetFinishedDto]),
    __metadata("design:returntype", Promise)
], SetsController.prototype, "finishSet", null);
__decorate([
    (0, common_1.Delete)(":id"),
    (0, common_1.HttpCode)(common_1.HttpStatus.OK),
    (0, swagger_1.ApiOkResponse)(),
    (0, roles_decorator_1.Roles)(["ADMIN"]),
    (0, common_1.UseGuards)(jwt_auth_guard_1.JwtAuthGuard),
    (0, common_1.UseGuards)(roles_guard_1.RolesGuard),
    (0, swagger_1.ApiBearerAuth)(),
    __param(0, (0, common_1.Param)("id")),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", void 0)
], SetsController.prototype, "remove", null);
exports.SetsController = SetsController = __decorate([
    (0, common_1.Controller)("sets"),
    (0, swagger_1.ApiTags)("sets"),
    __metadata("design:paramtypes", [sets_service_1.SetsService])
], SetsController);
//# sourceMappingURL=sets.controller.js.map