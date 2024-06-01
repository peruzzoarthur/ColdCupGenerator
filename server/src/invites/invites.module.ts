import { Module } from "@nestjs/common";
import { InvitesService } from "./invites.service";
import { InvitesController } from "./invites.controller";
import { PrismaModule } from "prisma/prisma.module";
import { JwtService } from "@nestjs/jwt";
import { DoublesService } from "src/doubles/doubles.service";

@Module({
  controllers: [InvitesController],
  providers: [InvitesService, JwtService, DoublesService],
  imports: [PrismaModule],
})
export class InvitesModule {}
