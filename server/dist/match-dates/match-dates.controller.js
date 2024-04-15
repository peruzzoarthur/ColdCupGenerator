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
        return this.matchDatesService.findOne(+id);
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
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [create_match_date_dto_1.CreateMatchDateDto]),
    __metadata("design:returntype", void 0)
], MatchDatesController.prototype, "create", null);
__decorate([
    (0, common_1.Get)(),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], MatchDatesController.prototype, "findAll", null);
__decorate([
    (0, common_1.Get)(':id'),
    __param(0, (0, common_1.Param)('id')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", void 0)
], MatchDatesController.prototype, "findOne", null);
__decorate([
    (0, common_1.Patch)(':id'),
    __param(0, (0, common_1.Param)('id')),
    __param(1, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, update_match_date_dto_1.UpdateMatchDateDto]),
    __metadata("design:returntype", void 0)
], MatchDatesController.prototype, "update", null);
__decorate([
    (0, common_1.Delete)(':id'),
    __param(0, (0, common_1.Param)('id')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", void 0)
], MatchDatesController.prototype, "remove", null);
exports.MatchDatesController = MatchDatesController = __decorate([
    (0, common_1.Controller)('match-dates'),
    __metadata("design:paramtypes", [match_dates_service_1.MatchDatesService])
], MatchDatesController);
//# sourceMappingURL=match-dates.controller.js.map