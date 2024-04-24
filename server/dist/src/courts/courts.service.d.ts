import { CreateCourtDto } from "./dto/create-court.dto";
import { UpdateCourtDto } from "./dto/update-court.dto";
import { PrismaService } from "src/prisma.service";
export declare class CourtsService {
    private readonly prismaService;
    constructor(prismaService: PrismaService);
    create(createCourtDto: CreateCourtDto): Promise<{
        id: string;
        name: string;
        isAvailable: boolean;
        placeId: string;
    }>;
    findAll(): string;
    findOne(id: number): string;
    update(id: number, updateCourtDto: UpdateCourtDto): string;
    remove(id: number): string;
}
