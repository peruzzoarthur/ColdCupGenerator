declare enum CatType {
    ALL = "ALL",
    F = "F",
    M = "M"
}
declare enum Position {
    REVES = "REVES",
    DRIVE = "DRIVE"
}
export declare class CreatePlayerDto {
    firstName: string;
    lastName: string;
    categoryLevel?: number;
    categoryType?: CatType;
    categoryId: string;
    position: Position;
}
export {};
