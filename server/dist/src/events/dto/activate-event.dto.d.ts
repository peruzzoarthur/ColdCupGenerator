export declare class ActivateEventDto {
    id: string;
    startDate: string;
    finishDate: string;
    timeOfFirstMatch: number;
    timeOfLastMatch: number;
    matchDurationInMinutes: number;
    courtsIds: string[];
    autoPopulate?: boolean;
}
