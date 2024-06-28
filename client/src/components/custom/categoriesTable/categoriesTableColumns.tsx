import { Button } from '@/components/ui/button'
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuLabel,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { CatType } from '@/types/padel.types'

import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown, MoreHorizontal } from 'lucide-react'

export type CategoriesTableData = {
    level: number
    type: CatType
    id: string
    players: number
    doubles: number
}

export const categoriesColumns: ColumnDef<CategoriesTableData>[] = [
    {
        accessorKey: 'level',
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
                    {row.getValue('level')}
                </div>
            )
        },
    },
    {
        accessorKey: 'type',
        header: ({ column }) => {
            return (
                <div className="text-center ">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Type
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-center">
                    {row.getValue('type')}
                </div>
            )
        },
    },

    {
        accessorKey: 'players',
        header: ({ column }) => {
            return (
                <div className="text-center ">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Players
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-center">
                    {row.getValue('players')}
                </div>
            )
        },
    },
    {
        accessorKey: 'doubles',
        header: ({ column }) => {
            return (
                <div className="text-center ">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Doubles
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-center">
                    {row.getValue('doubles')}
                </div>
            )
        },
    },

    {
        id: 'actions',
        cell: ({ row }) => {
            const categoryId = row.original.id
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
                                console.log(categoryId)
                            }}
                        >
                            Deleting category...
                        </DropdownMenuItem>
                    </DropdownMenuContent>
                </DropdownMenu>
            )
        },
    },
]
