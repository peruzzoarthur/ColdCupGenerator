export declare class CreateEventDto {
    name: string;
    categoriesIds: string[];
    placesIds: string[];
    startDate: string;
    finishDate: string;
    timeOfFirstMatch: number;
    timeOfLastMatch: number;
    matchDurationInMinutes: number;
}