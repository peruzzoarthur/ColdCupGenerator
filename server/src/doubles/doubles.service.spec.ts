import { Test, TestingModule } from '@nestjs/testing';
import { DoublesService } from './doubles.service';

describe('DoublesService', () => {
  let service: DoublesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [DoublesService],
    }).compile();

    service = module.get<DoublesService>(DoublesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
