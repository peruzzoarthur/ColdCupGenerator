export declare class CreatePlayerDto {
    firstName: string;
    lastName: string;
    email: string;
    categoryId: number;
    categoryType: CatType;
    position: Position;
}
declare enum CatType {
    ALL = "ALL",
    F = "F",
    M = "M"
}
declare enum Position {
    REVES = "REVES",
    DRIVE = "DRIVE"
}
export {};
