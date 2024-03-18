import { CreatePlaceDto } from "./dto/create-place.dto";
import { UpdatePlaceDto } from "./dto/update-place.dto";
import { PrismaService } from "src/prisma.service";
export declare class PlacesService {
    private readonly prismaService;
    constructor(prismaService: PrismaService);
    createPlace(createPlaceDto: CreatePlaceDto): Promise<{
        id: string;
        name: string;
        address: string;
    }>;
    findAllPlaces(): Promise<{
        id: string;
        name: string;
        address: string;
    }[]>;
    findOne(id: number): string;
    update(id: number, updatePlaceDto: UpdatePlaceDto): string;
    remove(id: number): string;
}
