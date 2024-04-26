export class ActivateEventDto {
  id: string;
  startDate: string;
  finishDate: string;
  timeOfFirstMatch: string;
  timeOfLastMatch: string;
  matchDurationInMinutes: string;
  courtsIds: string[];
}
