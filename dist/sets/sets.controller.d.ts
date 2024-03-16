import { SetsService } from './sets.service';
import { CreateSetDto } from './dto/create-set.dto';
import { UpdateSetDto } from './dto/update-set.dto';
export declare class SetsController {
    private readonly setsService;
    constructor(setsService: SetsService);
    create(createSetDto: CreateSetDto): string;
    findAll(): string;
    findOne(id: string): string;
    update(id: string, updateSetDto: UpdateSetDto): string;
    remove(id: string): string;
}
