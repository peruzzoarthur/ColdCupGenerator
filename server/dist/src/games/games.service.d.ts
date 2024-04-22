import { CreateGameDto } from "./dto/create-game.dto";
import { UpdateGameDto } from "./dto/update-game.dto";
import { PrismaService } from "src/prisma.service";
export declare class GamesService {
    private readonly prismaService;
    constructor(prismaService: PrismaService);
    create(createGameDto: CreateGameDto): Promise<{
        id: string;
        setId: string;
        winnerId: string;
    }>;
    findAll(): string;
    findOne(id: number): string;
    update(id: number, updateGameDto: UpdateGameDto): string;
    remove(id: number): string;
}
