"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.UpdateMatchDateDto = void 0;
const mapped_types_1 = require("@nestjs/mapped-types");
const create_match_date_dto_1 = require("./create-match-date.dto");
class UpdateMatchDateDto extends (0, mapped_types_1.PartialType)(create_match_date_dto_1.CreateMatchDateDto) {
}
exports.UpdateMatchDateDto = UpdateMatchDateDto;
//# sourceMappingURL=update-match-date.dto.js.map