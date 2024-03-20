export class CreatePlayerDto {
  firstName: string;
  lastName: string;
  email: string;
  categoryLevel?: number;
  categoryType?: CatType;
  categoryId: string;
  position: Position;
}

enum CatType {
  ALL = "ALL",
  F = "F",
  M = "M",
}

enum Position {
  REVES = "REVES",
  DRIVE = "DRIVE",
}
