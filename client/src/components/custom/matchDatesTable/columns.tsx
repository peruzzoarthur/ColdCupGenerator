import { Button } from '@/components/ui/button'
import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown } from 'lucide-react'

export type MatchDatesTableProps = {
    start: string | undefined
    finish: string | undefined
    matchId: string | undefined
    doublesOne: string | undefined
    doublesTwo: string | undefined
    number: number | undefined
    court: string | undefined
}

export const matchDateColumns: ColumnDef<MatchDatesTableProps>[] = [
    {
        accessorKey: 'number',
        header: ({ column }) => {
            return (
                <div className="text-left">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        #
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="ml-4 font-medium text-left">
                    {row.getValue('number')}
                </div>
            )
        },
    },
    { accessorKey: 'start', header: 'Date & Time' },
    {
        accessorKey: 'court',
        header: ({ column }) => {
            return (
                <div className="text-left">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Court
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="ml-4 font-medium text-left">
                    {row.getValue('court')}
                </div>
            )
        },
    },
    { accessorKey: 'doublesOne', header: 'Doubles 1' },
    { accessorKey: 'doublesTwo', header: 'Doubles 2' },
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
