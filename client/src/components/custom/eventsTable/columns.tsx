import { Button } from '@/components/ui/button'
import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown } from 'lucide-react'

export type RegisteredDoublesTable = {
    catId: string | null
    id: string
    matchesWon: number | null
    playerOneName: string | null
    playerTwoName: string | null
    categoryLevel: number | null
    categoryType: string | null
    W: number | null
    T: number | null
    gamesDiff: number | null
    // status: 'pending' | 'registered'
}

export const doublesColumns: ColumnDef<RegisteredDoublesTable>[] = [
    // {
    //     accessorKey: 'status',
    //     header: 'Status',
    // },
    { accessorKey: 'playerOneName', header: 'Player One' },
    { accessorKey: 'playerTwoName', header: 'Player Two' },
    { accessorKey: 'matchesWon', header: 'Matches won' },
    {
        accessorKey: 'W',
        header: ({ column }) => {
            return (
                <div className="text-center">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        W
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-center">
                    {row.getValue('W')}
                </div>
            )
        },
    },
    { accessorKey: 'T', header: 'T' },
    {
        accessorKey: 'gamesDiff',
        header: ({ column }) => {
            return (
                <div className="text-center">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Diff
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-center">
                    {row.getValue('gamesDiff')}
                </div>
            )
        },
    },

    {
        accessorKey: 'categoryLevel',
        header: ({ column }) => {
            return (
                <div className="text-right">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Level
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-right">
                    {row.getValue('categoryLevel')}
                </div>
            )
        },
    },
    {
        accessorKey: 'categoryType',
        header: ({ column }) => {
            return (
                <div className="text-center ">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Category Type
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-center">
                    {row.getValue('categoryType')}
                </div>
            )
        },
    },
]
