"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.DoublesModule = void 0;
const common_1 = require("@nestjs/common");
const doubles_service_1 = require("./doubles.service");
const doubles_controller_1 = require("./doubles.controller");
const prisma_service_1 = require("../prisma.service");
const jwt_1 = require("@nestjs/jwt");
let DoublesModule = class DoublesModule {
};
exports.DoublesModule = DoublesModule;
exports.DoublesModule = DoublesModule = __decorate([
    (0, common_1.Module)({
        controllers: [doubles_controller_1.DoublesController],
        providers: [doubles_service_1.DoublesService, prisma_service_1.PrismaService, jwt_1.JwtService],
    })
], DoublesModule);
//# sourceMappingURL=doubles.module.js.map