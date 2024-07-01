import { Button } from '@/components/ui/button'
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuLabel,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'

import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown, MoreHorizontal } from 'lucide-react'

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
    { accessorKey: 'playerOneName', header: 'P1' },
    { accessorKey: 'playerTwoName', header: 'P2' },

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
    {
        accessorKey: 'id',
        header: () => <></>,
        cell: () => <></>, //!  maybe i don't need to instantiate this two columns
        enableHiding: false,
    },

    // {
    //     accessorKey: 'catId',
    //     header: () => <></>,
    //     cell: () => <></>, //!  maybe i don't need to instantiate this two columns
    //     enableHiding: false,
    // },
    // { accessorKey: 'matches', header: 'Total matches' },
    // { accessorKey: 'matchesWins', header: 'Winning matches' },
    {
        id: 'actions',
        cell: ({ row }) => {
            const doublesId = row.original.id
            return (
                <DropdownMenu>
                    <DropdownMenuTrigger asChild>
                        <Button variant="ghost" className="w-8 h-8 p-0">
                            <MoreHorizontal className="w-4 h-4" />
                        </Button>
                    </DropdownMenuTrigger>
                    <DropdownMenuContent>
                        <DropdownMenuLabel>Actions</DropdownMenuLabel>
                        <DropdownMenuItem
                            className="cursor-pointer"
                            onClick={() => {
                                console.log(doublesId)
                            }}
                        >
                            Remove doubles from your doubles list
                        </DropdownMenuItem>
                    </DropdownMenuContent>
                </DropdownMenu>
            )
        },
    },
]
