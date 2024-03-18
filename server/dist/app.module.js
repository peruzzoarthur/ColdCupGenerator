"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AppModule = void 0;
const common_1 = require("@nestjs/common");
const config_1 = require("@nestjs/config");
const Joi = require("@hapi/joi");
const prisma_service_1 = require("./prisma.service");
const player_module_1 = require("./players/player.module");
const doubles_module_1 = require("./doubles/doubles.module");
const events_module_1 = require("./events/events.module");
const categories_module_1 = require("./categories/categories.module");
const matches_module_1 = require("./matches/matches.module");
const sets_module_1 = require("./sets/sets.module");
const games_module_1 = require("./games/games.module");
const places_module_1 = require("./places/places.module");
let AppModule = class AppModule {
};
exports.AppModule = AppModule;
exports.AppModule = AppModule = __decorate([
    (0, common_1.Module)({
        imports: [
            config_1.ConfigModule.forRoot({
                validationSchema: Joi.object({
                    DATABASE_URL: Joi.string().required(),
                }),
            }),
            player_module_1.PlayerModule,
            doubles_module_1.DoublesModule,
            events_module_1.EventsModule,
            categories_module_1.CategoriesModule,
            matches_module_1.MatchesModule,
            sets_module_1.SetsModule,
            games_module_1.GamesModule,
            places_module_1.PlacesModule,
        ],
        controllers: [],
        providers: [prisma_service_1.PrismaService],
    })
], AppModule);
//# sourceMappingURL=app.module.js.map