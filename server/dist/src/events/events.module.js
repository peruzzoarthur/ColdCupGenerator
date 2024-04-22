"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.EventsModule = void 0;
const common_1 = require("@nestjs/common");
const events_service_1 = require("./events.service");
const events_controller_1 = require("./events.controller");
const prisma_service_1 = require("../prisma.service");
const categories_service_1 = require("../categories/categories.service");
const matches_service_1 = require("../matches/matches.service");
const sets_service_1 = require("../sets/sets.service");
const games_service_1 = require("../games/games.service");
let EventsModule = class EventsModule {
};
exports.EventsModule = EventsModule;
exports.EventsModule = EventsModule = __decorate([
    (0, common_1.Module)({
        controllers: [events_controller_1.EventsController],
        providers: [
            events_service_1.EventsService,
            prisma_service_1.PrismaService,
            categories_service_1.CategoriesService,
            matches_service_1.MatchesService,
            sets_service_1.SetsService,
            games_service_1.GamesService,
        ],
    })
], EventsModule);
//# sourceMappingURL=events.module.js.map