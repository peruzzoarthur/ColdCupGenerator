export type Player = {
    firstName: string
    lastName: string
    email: string
    categoryId: string
    position: Position
    id: string
}

export type Double = {
    players: Player[]
    id: string
    category?: Category
}

export type EventDouble = {
    double: Double
}

export type Place = {
    id: string
    name: string
    address: string
}

export type Category = {
    id: string
    type: string
    level: number
    eventDoubles?: EventDouble[]
}

export type PadelEvent = {
    id: string
    name: string
    places: Place[]
    categories: Category[]
}

export enum CatType {
    ALL = 'ALL',
    F = 'F',
    M = 'M',
}

export enum Position {
    REVES = 'REVES',
    DRIVE = 'DRIVE',
}
