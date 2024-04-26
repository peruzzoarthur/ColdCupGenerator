export declare class CreateScheduleDto {
    startDate: string;
    finishDate: string;
    timeOfFirstMatch: number;
    timeOfLastMatch: number;
    matchDurationInMinutes: number;
    id: string;
    courtIds?: string[];
}
