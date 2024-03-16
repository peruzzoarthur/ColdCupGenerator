"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.UpdateDoubleDto = void 0;
const mapped_types_1 = require("@nestjs/mapped-types");
const create_double_dto_1 = require("./create-double.dto");
class UpdateDoubleDto extends (0, mapped_types_1.PartialType)(create_double_dto_1.CreateDoubleDto) {
}
exports.UpdateDoubleDto = UpdateDoubleDto;
//# sourceMappingURL=update-double.dto.js.map