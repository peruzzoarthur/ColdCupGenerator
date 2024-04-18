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
    categoryId: string
    doubleId: string
    double?: Double
    event?: PadelEvent
    eventId: string
    matchesWins: Match[]
    games: Game[]
    gamesWins: Game[]
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
    eventDoubles?: Double[]
    categories: Category[]
    matches: Match[]
    startDate: string
    finishDate: string
    timeOfFirstMatch: number
    timeOfLastMatch: number
    matchDurationInMinutes: number
}

export type Match = {
    id: string
    number: number
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
    games: Game[]
}

export type Game = {
    winner: Double
    winnerId: string
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
