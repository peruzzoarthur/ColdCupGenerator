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
exports.MatchDatesController = void 0;
const common_1 = require("@nestjs/common");
const match_dates_service_1 = require("./match-dates.service");
const create_match_date_dto_1 = require("./dto/create-match-date.dto");
const update_match_date_dto_1 = require("./dto/update-match-date.dto");
const swagger_1 = require("@nestjs/swagger");
const roles_decorator_1 = require("../auth/roles.decorator");
const jwt_auth_guard_1 = require("../auth/jwt-auth.guard");
const roles_guard_1 = require("../auth/roles.guard");
let MatchDatesController = class MatchDatesController {
    constructor(matchDatesService) {
        this.matchDatesService = matchDatesService;
    }
    create(createMatchDateDto) {
        return this.matchDatesService.create(createMatchDateDto);
    }
    findAll() {
        return this.matchDatesService.findAll();
    }
    findOne(id) {
        return this.matchDatesService.findOne(id);
    }
    findMatchDatesByEventId(eventId) {
        return this.matchDatesService.findMatchDatesInOrderByEventId(eventId);
    }
    update(id, updateMatchDateDto) {
        return this.matchDatesService.update(+id, updateMatchDateDto);
    }
    remove(id) {
        return this.matchDatesService.remove(+id);
    }
};
exports.MatchDatesController = MatchDatesController;
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
    __metadata("design:paramtypes", [create_match_date_dto_1.CreateMatchDateDto]),
    __metadata("design:returntype", void 0)
], MatchDatesController.prototype, "create", null);
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
    __metadata("design:returntype", void 0)
], MatchDatesController.prototype, "findAll", null);
__decorate([
    (0, common_1.Get)("/:id"),
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
], MatchDatesController.prototype, "findOne", null);
__decorate([
    (0, common_1.Get)("/by-event/:id"),
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
], MatchDatesController.prototype, "findMatchDatesByEventId", null);
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
    __metadata("design:paramtypes", [String, update_match_date_dto_1.UpdateMatchDateDto]),
    __metadata("design:returntype", void 0)
], MatchDatesController.prototype, "update", null);
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
], MatchDatesController.prototype, "remove", null);
exports.MatchDatesController = MatchDatesController = __decorate([
    (0, common_1.Controller)("match-dates"),
    (0, swagger_1.ApiTags)("match-dates"),
    __metadata("design:paramtypes", [match_dates_service_1.MatchDatesService])
], MatchDatesController);
//# sourceMappingURL=match-dates.controller.js.map