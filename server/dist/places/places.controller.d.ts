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
    }[]>;
    findOne(id: string): string;
    update(id: string, updatePlaceDto: UpdatePlaceDto): string;
    remove(id: string): string;
}
