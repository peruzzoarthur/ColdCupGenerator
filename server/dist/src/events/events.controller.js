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
exports.EventsController = void 0;
const common_1 = require("@nestjs/common");
const events_service_1 = require("./events.service");
const create_event_dto_1 = require("./dto/create-event.dto");
const update_event_dto_1 = require("./dto/update-event.dto");
const register_doubles_event_dto_1 = require("./dto/register-doubles-event.dto");
const get_event_by_id_dto_1 = require("./dto/get-event-by-id.dto");
const activate_event_dto_1 = require("./dto/activate-event.dto");
const delete_doubles_dto_1 = require("./dto/delete-doubles.dto");
const jwt_auth_guard_1 = require("../auth/jwt-auth.guard");
const roles_guard_1 = require("../auth/roles.guard");
const roles_decorator_1 = require("../auth/roles.decorator");
let EventsController = class EventsController {
    constructor(eventsService) {
        this.eventsService = eventsService;
    }
    async create(createEventDto) {
        return await this.eventsService.createEvent(createEventDto);
    }
    async update(updateEventDto) {
        return await this.eventsService.updateEvent(updateEventDto);
    }
    async getEventById(getEventByIdDto) {
        return await this.eventsService.getEventById(getEventByIdDto);
    }
    async activateEventAutoPop(activateEventDto) {
        return await this.eventsService.activateEvent(activateEventDto);
    }
    async registerDoublesInEvent(registerDoublesInEventDto) {
        return await this.eventsService.registerDoublesInEvent(registerDoublesInEventDto);
    }
    async deleteDoublesInEvent(deleteDoublesInEventDto) {
        return await this.eventsService.deleteDoublesInEvent(deleteDoublesInEventDto);
    }
    async findAllEvents() {
        return await this.eventsService.findAllEvents();
    }
    async findOne(id) {
        return this.eventsService.getEventByIdParam(id);
    }
    async getEventInfo(id) {
        return this.eventsService.getEventInfoForGenerateMatches(id);
    }
    async remove(id) {
        return this.eventsService.remove(+id);
    }
};
exports.EventsController = EventsController;
__decorate([
    (0, common_1.Post)(),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [create_event_dto_1.CreateEventDto]),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "create", null);
__decorate([
    (0, common_1.Patch)("update-event"),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [update_event_dto_1.UpdateEventDto]),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "update", null);
__decorate([
    (0, common_1.Post)("event-by-id"),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [get_event_by_id_dto_1.GetEventByIdDto]),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "getEventById", null);
__decorate([
    (0, common_1.Post)("activate-event"),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [activate_event_dto_1.ActivateEventDto]),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "activateEventAutoPop", null);
__decorate([
    (0, common_1.Post)("register"),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [register_doubles_event_dto_1.RegisterDoublesInEventDto]),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "registerDoublesInEvent", null);
__decorate([
    (0, common_1.Post)("delete-doubles"),
    __param(0, (0, common_1.Body)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [delete_doubles_dto_1.DeleteDoublesInEventDto]),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "deleteDoublesInEvent", null);
__decorate([
    (0, roles_decorator_1.Roles)(["USER", "ADMIN"]),
    (0, common_1.UseGuards)(jwt_auth_guard_1.JwtAuthGuard),
    (0, common_1.UseGuards)(roles_guard_1.RolesGuard),
    (0, common_1.Get)(),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "findAllEvents", null);
__decorate([
    (0, common_1.Get)(":id"),
    __param(0, (0, common_1.Param)("id")),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "findOne", null);
__decorate([
    (0, common_1.Get)("/event-info/:id"),
    __param(0, (0, common_1.Param)("id")),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "getEventInfo", null);
__decorate([
    (0, common_1.Delete)(":id"),
    __param(0, (0, common_1.Param)("id")),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", Promise)
], EventsController.prototype, "remove", null);
exports.EventsController = EventsController = __decorate([
    (0, common_1.Controller)("events"),
    __metadata("design:paramtypes", [events_service_1.EventsService])
], EventsController);
//# sourceMappingURL=events.controller.js.map