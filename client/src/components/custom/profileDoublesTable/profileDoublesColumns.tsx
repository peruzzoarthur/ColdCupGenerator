import { Button } from '@/components/ui/button'
import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown } from 'lucide-react'

export type ProfileDoublesTableProps = {
    id: string | null
    playerOneName: string | null
    playerTwoName: string | null
    categoryLevel: number | null
    categoryType: string | null
    matches: number | null
    matchesWins: number | null
}

export const profileDoublesColumns: ColumnDef<ProfileDoublesTableProps>[] = [
    { accessorKey: 'playerOneName', header: 'Player 1' },
    { accessorKey: 'playerTwoName', header: 'Player 2' },

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
