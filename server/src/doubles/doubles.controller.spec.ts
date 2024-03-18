import { Test, TestingModule } from '@nestjs/testing';
import { DoublesController } from './doubles.controller';
import { DoublesService } from './doubles.service';

describe('DoublesController', () => {
  let controller: DoublesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [DoublesController],
      providers: [DoublesService],
    }).compile();

    controller = module.get<DoublesController>(DoublesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
