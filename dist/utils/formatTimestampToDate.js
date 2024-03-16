"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.formatTimestampToDate = void 0;
function formatTimestampToDate(timestampString) {
    const timestamp = parseInt(timestampString, 10);
    if (isNaN(timestamp)) {
        return 'Invalid timestamp';
    }
    const date = new Date(timestamp);
    const day = String(date.getDate()).padStart(2, '0');
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const year = date.getFullYear();
    const hours = String(date.getHours()).padStart(2, '0');
    const minutes = String(date.getMinutes()).padStart(2, '0');
    const seconds = String(date.getSeconds()).padStart(2, '0');
    return `${day}-${month}-${year} ${hours}:${minutes}:${seconds}`;
}
exports.formatTimestampToDate = formatTimestampToDate;
//# sourceMappingURL=formatTimestampToDate.js.map