import { Test, TestingModule } from "@nestjs/testing";
import { EventsService } from "./events.service";
import { CreateScheduleDto } from "./dto/create-schedule.dto";
import { CategoriesService } from "src/categories/categories.service";
import { MatchesService } from "src/matches/matches.service";
import { SetsService } from "src/sets/sets.service";
import { GamesService } from "src/games/games.service";
import { EventsModule } from "./events.module";
import { EventsController } from "./events.controller";
import { PrismaService } from "src/prisma.service";

describe("EventsService", () => {
  let module: TestingModule;
  let eventsService: EventsService;
  let prismaService: PrismaService;

  beforeEach(async () => {
    module = await Test.createTestingModule({
      imports: [EventsModule],
      controllers: [EventsController],
      providers: [
        EventsService,
        CategoriesService,
        MatchesService,
        SetsService,
        GamesService,
        PrismaService,
      ],
    }).compile();

    eventsService = module.get<EventsService>(EventsService);
    prismaService = module.get<PrismaService>(PrismaService);
    prismaService.matchDate.create = jest.fn();
  });

  it("creates an array of days with correct length and properties", async () => {
    // Arrange
    const createScheduleDto: CreateScheduleDto = {
      startDate: "2024-01-01",
      finishDate: "2024-01-05",
      timeOfFirstMatch: 9,
      timeOfLastMatch: 18,
      matchDurationInMinutes: 60,
      id: "d7f0ae85-9b21-4410-8e7e-aa1db54ad1af",
      courtIds: ["court-id-1", "court-id-2"],
    };

    // Act
    const result = await eventsService.createSchedule(createScheduleDto);

    // Assert
    expect(result).toHaveLength(5);
    expect(result[0].day).toBe(1);
    expect(result[0].date).toBe("2024-01-01T00:00:00.000Z");
    expect(result[0].timeOfFirstMatch).toBe(9);
    expect(result[0].timeOfLastMatch).toBe(18);
    expect(result[0].matchDuration).toBe(60);
  });

  it("creates a schedule for an event with valid input data [one courtId]", async () => {
    // Arrange
    const createScheduleDto: CreateScheduleDto = {
      startDate: "2022-01-01",
      finishDate: "2022-01-03",
      timeOfFirstMatch: 10,
      timeOfLastMatch: 18,
      matchDurationInMinutes: 60,
      id: "event-id",
      courtIds: ["court-id-1"],
    };

    // Act
    const result = await eventsService.createSchedule(createScheduleDto);

    // Assert
    expect(result).toHaveLength(3);
    expect(prismaService.matchDate.create).toHaveBeenCalledTimes(27);
  });

  it("creates a schedule for an event with valid input data [multiple courtIds]", async () => {
    // Arrange
    const createScheduleDto: CreateScheduleDto = {
      startDate: "2022-01-01",
      finishDate: "2022-01-03",
      timeOfFirstMatch: 10,
      timeOfLastMatch: 18,
      matchDurationInMinutes: 60,
      id: "event-id",
      courtIds: ["court-id-1", "court-id-2"],
    };

    // Act
    const result = await eventsService.createSchedule(createScheduleDto);

    // Assert
    expect(result).toHaveLength(3);
    expect(prismaService.matchDate.create).toHaveBeenCalledTimes(54);
  });

  it("creates a schedule for an event with valid input data [one day event]", async () => {
    // Arrange
    const createScheduleDto: CreateScheduleDto = {
      startDate: "2022-01-01",
      finishDate: "2022-01-01",
      timeOfFirstMatch: 10,
      timeOfLastMatch: 18,
      matchDurationInMinutes: 60,
      id: "event-id",
      courtIds: ["court-id-1", "court-id-2"],
    };

    // Act
    const result = await eventsService.createSchedule(createScheduleDto);

    // Assert
    expect(result).toHaveLength(1);
    expect(prismaService.matchDate.create).toHaveBeenCalledTimes(18);
  });
});
