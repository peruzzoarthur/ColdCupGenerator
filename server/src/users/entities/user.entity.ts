import { ApiProperty } from "@nestjs/swagger";

import { User } from "@prisma/client";
import { Exclude } from "class-transformer";

export class UserEntity implements Partial<User> {
  constructor(partial: Partial<UserEntity>) {
    Object.assign(this, partial);
  }
  @ApiProperty()
  id: string;

  @ApiProperty()
  createdAt: Date;

  @ApiProperty()
  updatedAt: Date;

  @ApiProperty()
  name: string;

  @ApiProperty()
  email: string;

  @Exclude()
  password: string;
}
