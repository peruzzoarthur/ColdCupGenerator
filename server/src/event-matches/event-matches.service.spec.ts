import { Test, TestingModule } from '@nestjs/testing';
import { EventMatchesService } from './event-matches.service';

describe('EventMatchesService', () => {
  let service: EventMatchesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [EventMatchesService],
    }).compile();

    service = module.get<EventMatchesService>(EventMatchesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
