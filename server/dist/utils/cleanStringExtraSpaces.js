"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.cleanStringExtraSpaces = void 0;
const cleanStringExtraSpaces = (s) => {
    return s
        .split(/\s+/)
        .filter((string) => string !== '')
        .join(' ');
};
exports.cleanStringExtraSpaces = cleanStringExtraSpaces;
//# sourceMappingURL=cleanStringExtraSpaces.js.map