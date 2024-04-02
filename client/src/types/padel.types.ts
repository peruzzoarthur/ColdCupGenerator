export type Player = {
    firstName: string
    lastName: string
    email: string
    categoryId: string
    position: Position
    id: string
    categories?: Category[]
}

export type Double = {
    players: Player[]
    id: string
    category?: Category
}

export type EventDouble = {
    categoryId: string
    doubleId: string
    eventId: string
    double?: Double
    category?: Category
    event?: PadelEvent
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
    doubles?: Double[]
    eventDoubles?: Double[]
}

export type PadelEvent = {
    id: string
    name: string
    places: Place[]
    eventDoubles?: EventDouble[]
    categories: Category[]
    matches: Match[]
}

export type Match = {
    doubles: Double[]
    category: Category
    categoryId: string
    eventId: string
    doublesId: string
    isFinished: boolean
    sets: Set[]
    winner: Double
}

export type Set = {
    id: string
    type: string
    setWinner: Double
    isFinished: boolean
    result: string
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
