import { CreatePlaceDto } from "./dto/create-place.dto";
import { UpdatePlaceDto } from "./dto/update-place.dto";
import { PrismaService } from "src/prisma.service";
import { CourtsService } from "src/courts/courts.service";
export declare class PlacesService {
    private readonly prismaService;
    private readonly courtsService;
    constructor(prismaService: PrismaService, courtsService: CourtsService);
    createPlace(createPlaceDto: CreatePlaceDto): Promise<{
        id: string;
        name: string;
        address: string;
    }>;
    findAllPlaces(): Promise<{
        id: string;
        name: string;
        courts: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        }[];
        address: string;
    }[]>;
    findOne(id: number): string;
    update(id: number, updatePlaceDto: UpdatePlaceDto): string;
    remove(id: number): string;
}
