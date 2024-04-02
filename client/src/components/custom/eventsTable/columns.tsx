import { Button } from '@/components/ui/button'
import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown } from 'lucide-react'

export type RegisteredDoublesTable = {
    id: string
    playerOneName: string | undefined
    playerTwoName: string | undefined
    categoryLevel: number | undefined
    categoryType: string | undefined
    // status: 'pending' | 'registered'
}

export const columns: ColumnDef<RegisteredDoublesTable>[] = [
    // {
    //     accessorKey: 'status',
    //     header: 'Status',
    // },
    { accessorKey: 'playerOneName', header: 'Player One' },
    { accessorKey: 'playerTwoName', header: 'Player Two' },
    {
        accessorKey: 'categoryLevel',
        header: ({ column }) => {
            return (
                <Button
                    variant="ghost"
                    onClick={() =>
                        column.toggleSorting(column.getIsSorted() === 'asc')
                    }
                >
                    Level
                    <ArrowUpDown className="w-4 h-4 ml-2" />
                </Button>
            )
        },
    },
    {
        accessorKey: 'categoryType',
        header: ({ column }) => {
            return (
                <Button
                    variant="ghost"
                    onClick={() =>
                        column.toggleSorting(column.getIsSorted() === 'asc')
                    }
                >
                    Category Type
                    <ArrowUpDown className="w-4 h-4 ml-2" />
                </Button>
            )
        },
    },
]
