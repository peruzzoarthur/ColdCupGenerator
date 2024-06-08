export type User = {
    firstName: string
    lastName: string
    email: string
    id: string
    dob: string
    playerId: string
    profileImage: string
}

export type Invitation = {
    id: string
    eventId?: string
    matchId: string | null
    inviterId: string
    invitedId: string
    inviteType: InviteType
}

export enum InviteType {
    FRIENDS = 'FRIENDS',
    EVENT = 'EVENT',
    DOUBLES = 'DOUBLES',
    MATCH = 'MATCH',
}

export type Player = {
    firstName: string
    lastName: string
    categoryId: string
    position: Position
    id: string
    category: Category
    doubles: Double[]
}

export type Double = {
    players: Player[]
    id: string
    category?: Category
    categoryId: string
    doubleId: string
    double?: Double
    matches: Match[]
    matchesWins: Match[]
    games: Game[]
    gamesWins: Game[]
    eventDouble: EventDouble[]
}

export type EventDouble = {
    categoryId: string
    doubleId: string
    eventId: string
    double?: Double
    category?: Category
    event?: PadelEvent
}

export type EventRequest = {
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
    courts: Court[]
}

export type Court = {
    name: string
    id: string
}

export type Category = {
    id: string
    type: string
    level: number
    doubles?: Double[]
    eventDoubles?: Double[]
    totalMatches?: number
    matches?: Match[]
}

export type PadelEvent = {
    id: string
    name: string
    places: Place[]
    eventDoubles?: EventDouble[]
    eventRequests?: EventRequest[]
    categories: Category[]
    matches: Match[]
    startDate: string
    finishDate: string
    timeOfFirstMatch: number
    timeOfLastMatch: number
    matchDurationInMinutes: number
    matchDates: MatchDate[]
    totalMatches?: number
    availableMatchDates?: number
    suitable?: boolean
    eventType: string
    courts: Court[]
    isActive: boolean
}

export type Match = {
    id: string
    number: number
    doubles: Double[]
    category: Category
    categoryId: string
    event: PadelEvent
    eventId: string
    doublesId: string
    isFinished: boolean
    sets: Set[]
    winner: Double
    winnerDoublesId: string | null
    matchDate?: MatchDate
}

export type MatchDate = {
    id: string | null
    start: string
    finish: string
    matchId: string
    match: Match | null
    court: Court
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

export type ErrorResponse = {
    message: string
}
