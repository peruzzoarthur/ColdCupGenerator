import { PartialType } from '@nestjs/swagger';
import { CreateEventMatchDto } from './create-event-match.dto';

export class UpdateEventMatchDto extends PartialType(CreateEventMatchDto) {}
