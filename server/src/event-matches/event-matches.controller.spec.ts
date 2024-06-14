import { Test, TestingModule } from '@nestjs/testing';
import { EventMatchesController } from './event-matches.controller';
import { EventMatchesService } from './event-matches.service';

describe('EventMatchesController', () => {
  let controller: EventMatchesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [EventMatchesController],
      providers: [EventMatchesService],
    }).compile();

    controller = module.get<EventMatchesController>(EventMatchesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
