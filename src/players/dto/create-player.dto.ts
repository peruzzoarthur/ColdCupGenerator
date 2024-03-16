export class CreatePlayerDto {
  firstName: string;
  lastName: string;
  email: string;
  categoryId: number;
  categoryType: CatType;
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
