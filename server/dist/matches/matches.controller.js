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
exports.MatchesController = void 0;
const common_1 = require("@nestjs/common");
const matches_service_1 = require("./matches.service");
const create_match_dto_1 = require("./dto/create-match.dto");
const update_match_dto_1 = require("./dto/update-match.dto");
const match_finished_dto_1 = require("./dto/match-finished.dto");
let MatchesController = class MatchesController {
    constructor(matchesService) {
        this.matchesService = matchesService;
    }
    async create(createMatchDto) {
        return await this.matchesService.create(createMatchDto);
    }
    async findAll() {
        return await this.matchesService.findAll();
    }
    async findOne(id) {
        return await this.matchesService.findOne(id);
    }
    update(id, updateMatchDto) {
        return this.matchesService.update(id, updateMatchDto);
    }
    async matchFinished(id, matchFinishedDto) {
        return await this.matchesService.matchFinished(id, matchFinishedDto);
    }
    remove(id) {
        return this.matchesService.remove(+id);
    }
};
exports.MatchesController = MatchesController;
__decorate([
    (0, common_1.Post)(),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [create_match_dto_1.CreateMatchDto]),
    __metadata("design:returntype", Promise)
], MatchesController.prototype, "create", null);
__decorate([
    (0, common_1.Get)(),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", Promise)
], MatchesController.prototype, "findAll", null);
__decorate([
    (0, common_1.Get)(":id"),
    __param(0, (0, common_1.Param)("id")),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], MatchesController.prototype, "findOne", null);
__decorate([
    (0, common_1.Patch)(":id"),
    __param(0, (0, common_1.Param)("id")),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, update_match_dto_1.UpdateMatchDto]),
    __metadata("design:returntype", void 0)
], MatchesController.prototype, "update", null);
__decorate([
    (0, common_1.Patch)("/finish-match/:id"),
    __param(0, (0, common_1.Param)("id")),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, match_finished_dto_1.MatchFinishedDto]),
    __metadata("design:returntype", Promise)
], MatchesController.prototype, "matchFinished", null);
__decorate([
    (0, common_1.Delete)(":id"),
    __param(0, (0, common_1.Param)("id")),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", void 0)
], MatchesController.prototype, "remove", null);
exports.MatchesController = MatchesController = __decorate([
    (0, common_1.Controller)("matches"),
    __metadata("design:paramtypes", [matches_service_1.MatchesService])
], MatchesController);
//# sourceMappingURL=matches.controller.js.map