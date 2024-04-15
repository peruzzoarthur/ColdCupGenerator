import { Test, TestingModule } from '@nestjs/testing';
import { MatchDatesService } from './match-dates.service';

describe('MatchDatesService', () => {
  let service: MatchDatesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [MatchDatesService],
    }).compile();

    service = module.get<MatchDatesService>(MatchDatesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
