import { Button } from '@/components/ui/button'

import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown } from 'lucide-react'

export type RegisteredDoublesTable = {
    catId: string | null
    id: string | null
    matchesWon: number | null
    playerOneName: string
    playerTwoName: string
    categoryLevel: number | null
    categoryType: string | null
    W: number | null
    T: number | null
    gamesDiff: number | null
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
    {
        accessorKey: 'id',
        header: () => <></>,
        cell: () => <></>, //!  maybe i don't need to instantiate this two columns
        enableHiding: false,
    },

    {
        accessorKey: 'catId',
        header: () => <></>,
        cell: () => <></>, //!  maybe i don't need to instantiate this two columns
        enableHiding: false,
    },
    // {
    //     id: 'actions',
    //     cell: ({ row }) => {
    //         const doublesId = row.original.id
    //         const eventId = row.original.eventId
    //         const categoryId = row.original.catId
    //         return (
    //             <DropdownMenu>
    //                 <DropdownMenuTrigger asChild>
    //                     <Button variant="ghost" className="w-8 h-8 p-0">
    //                         <MoreHorizontal className="w-4 h-4" />
    //                     </Button>
    //                 </DropdownMenuTrigger>
    //                 <DropdownMenuContent>
    //                     <DropdownMenuLabel>Actions</DropdownMenuLabel>
    //                     <DropdownMenuItem
    //                         onClick={() => {
    //                             if (doublesId && eventId && categoryId) {
    //                                 handleDeleteDoublesFromEvent(
    //                                     eventId,
    //                                     doublesId,
    //                                     categoryId
    //                                 )
    //                             } else {
    //                                 console.log(
    //                                     `EventId: ${eventId}\nCategoryId: ${categoryId}\n DoublesId: ${doublesId}`
    //                                 )
    //                                 return
    //                             }
    //                         }}
    //                     >
    //                         Delete doubles from event
    //                     </DropdownMenuItem>
    //                 </DropdownMenuContent>
    //             </DropdownMenu>
    //         )
    //     },
    // },
]
