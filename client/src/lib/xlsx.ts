import { MatchDatesTableProps } from '@/components/custom/matchDatesTable/columns'
import xlsx, { IJsonSheet } from 'json-as-xlsx'

export function downloadToExcel(schedule: MatchDatesTableProps[]) {
    const columns: IJsonSheet[] = [
        {
            sheet: 'Schedule',
            columns: [
                { label: '#', value: 'number' },
                { label: 'Date & Time', value: 'start' },
                { label: 'Court', value: 'court' },
                { label: 'Doubles 1', value: 'doublesOne' },
                { label: 'Doubles 2', value: 'doublesTwo' },
            ],
            content: schedule,
        },
    ]

    const settings = {
        fileName: 'Matches_Schedule_Excel',
    }

    xlsx(columns, settings)
}
