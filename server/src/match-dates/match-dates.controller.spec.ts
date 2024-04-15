import { Test, TestingModule } from '@nestjs/testing';
import { MatchDatesController } from './match-dates.controller';
import { MatchDatesService } from './match-dates.service';

describe('MatchDatesController', () => {
  let controller: MatchDatesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [MatchDatesController],
      providers: [MatchDatesService],
    }).compile();

    controller = module.get<MatchDatesController>(MatchDatesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
