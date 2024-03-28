import { Player, Position } from "../../client/src/types/padel.types";

type CreatePlayer = Omit<Player, "id">;

export const playersMock: CreatePlayer[] = [
  {
    firstName: "Arthur",
    lastName: "Ozzurep",
    categoryId: "",
    email: "ozzu@proton.me",
    position: Position.REVES,
  },
  {
    firstName: "Ju",
    lastName: "Ju",
    categoryId: "",
    email: "ju@proton.me",
    position: Position.DRIVE,
  },
  {
    firstName: "Maria",
    lastName: "Ij",
    categoryId: "",
    email: "marij@proton.me",
    position: Position.REVES,
  },
  {
    firstName: "Medusa",
    lastName: "Pluminha",
    categoryId: "",
    email: "dusi@proton.me",
    position: Position.DRIVE,
  },
  {
    firstName: "Xoan",
    lastName: "Plastic",
    categoryId: "",
    email: "xoanlovesplastic@proton.me",
    position: Position.DRIVE,
  },
  {
    firstName: "Guel",
    lastName: "deDeus",
    categoryId: "",
    email: "guelzin@proton.me",
    position: Position.REVES,
  },
  {
    firstName: "Juma",
    lastName: "Zobrinha",
    categoryId: "",
    email: "zobrinhademari@proton.me",
    position: Position.DRIVE,
  },
  {
    firstName: "Medusinha",
    lastName: "Arteira",
    categoryId: "",
    email: "irmadajuma@proton.me",
    position: Position.REVES,
  },
  // {
  //   firstName: "",
  //   lastName: "",
  //   categoryId: "",
  //   email: "",
  //   position: Position.DRIVE,
  // },
];
