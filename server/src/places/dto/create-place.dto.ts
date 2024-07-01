import { IsNotEmpty, IsString } from "class-validator";

export class CreatePlaceDto {
  @IsString()
  @IsNotEmpty({ message: "Please insert place name. " })
  name: string;

  @IsString()
  @IsNotEmpty({ message: "Please insert address. " })
  address: string;

  @IsString()
  @IsNotEmpty({ message: "Please insert at least one court. " })
  courts: string;
}
