import { Test, TestingModule } from "@nestjs/testing";
import { EventsService } from "./events.service";
import { CreateScheduleDto } from "./dto/create-schedule.dto";
import { PrismaService } from "/dev-arthur/Projects/Padel/server/src/prisma.service";
import { CategoriesService } from "src/categories/categories.service";
import { MatchesService } from "src/matches/matches.service";
import { SetsService } from "src/sets/sets.service";
import { GamesService } from "src/games/games.service";

describe("EventsService", () => {
  it("should create an array of days with correct length and properties", async () => {
    // Arrange
    const createScheduleDto: CreateScheduleDto = {
      startDate: "2022-01-01",
      finishDate: "2022-01-05",
      timeOfFirstMatch: 9,
      timeOfLastMatch: 18,
      matchDurationInMinutes: 60,
      id: "event-id",
      courtIds: ["court-id-1", "court-id-2"],
    };
    const prismaService = new PrismaService();
    const eventsService = new EventsService(
      prismaService,
      new CategoriesService(prismaService),
      new MatchesService(
        prismaService,
        new SetsService(prismaService, new GamesService(prismaService))
      )
    );
    const mockCreate = jest.fn().mockResolvedValue("hello");
    prismaService.matchDate.create = mockCreate;

    // Act
    const result = await eventsService.createSchedule(createScheduleDto);

    // Assert
    expect(result).toHaveLength(5);
    expect(result[0].day).toBe(1);
    expect(result[0].date).toBe("2022-01-01T00:00:00.000Z");
    expect(result[0].timeOfFirstMatch).toBe(9);
    expect(result[0].timeOfLastMatch).toBe(18);
    expect(result[0].matchDuration).toBe(60);
  });
});
