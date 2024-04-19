import { ColumnDef } from '@tanstack/react-table'

export type MatchDatesTable = {
    start: string | undefined
    finish: string | undefined
}

export const columns: ColumnDef<MatchDatesTable>[] = [
    // {
    //     accessorKey: 'status',
    //     header: 'Status',
    // },
    { accessorKey: 'start', header: 'Day One' },

    // {
    //     accessorKey: 'W',
    //     header: ({ column }) => {
    //         return (
    //             <div className="text-center">
    //                 <Button
    //                     variant="ghost"
    //                     onClick={() =>
    //                         column.toggleSorting(column.getIsSorted() === 'asc')
    //                     }
    //                 >
    //                     W
    //                     <ArrowUpDown className="w-4 h-4 ml-2" />
    //                 </Button>
    //             </div>
    //         )
    //     },
    //     cell: ({ row }) => {
    //         return (
    //             <div className="font-medium text-center">
    //                 {row.getValue('W')}
    //             </div>
    //         )
    //     },
    // },
]
