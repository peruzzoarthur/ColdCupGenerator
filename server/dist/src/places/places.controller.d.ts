import { PlacesService } from "./places.service";
import { CreatePlaceDto } from "./dto/create-place.dto";
import { UpdatePlaceDto } from "./dto/update-place.dto";
export declare class PlacesController {
    private readonly placesService;
    constructor(placesService: PlacesService);
    create(createPlaceDto: CreatePlaceDto): Promise<{
        id: string;
        name: string;
        address: string;
    }>;
    findAll(): Promise<{
        id: string;
        name: string;
        address: string;
        courts: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        }[];
    }[]>;
    findOne(id: string | undefined): import(".prisma/client").Prisma.Prisma__PlaceClient<{
        id: string;
        name: string;
        address: string;
        courts: {
            id: string;
            name: string;
            isAvailable: boolean;
            placeId: string;
        }[];
    }, null, import("@prisma/client/runtime/library").DefaultArgs>;
    update(id: string, updatePlaceDto: UpdatePlaceDto): string;
    remove(id: string): string;
}
