import { CourtsService } from "./courts.service";
import { CreateCourtDto } from "./dto/create-court.dto";
import { UpdateCourtDto } from "./dto/update-court.dto";
export declare class CourtsController {
    private readonly courtsService;
    constructor(courtsService: CourtsService);
    findAll(): string;
    findOne(id: string): string;
    create(createCourtDto: CreateCourtDto): Promise<{
        id: string;
        name: string;
        isAvailable: boolean;
        placeId: string;
    }>;
    update(id: string, updateCourtDto: UpdateCourtDto): string;
    remove(id: string): string;
}
