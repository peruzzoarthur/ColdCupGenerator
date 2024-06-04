import { Button } from '@/components/ui/button'
// import {
//     DropdownMenu,
//     DropdownMenuContent,
//     DropdownMenuItem,
//     DropdownMenuLabel,
//     DropdownMenuTrigger,
// } from '@/components/ui/dropdown-menu'

import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown } from 'lucide-react'

export type ProfileMatchesTableData = {
    id: string
    matchStart: string | null
    eventName: string | null
    doublesOne: string
    doublesTwo: string
    isFinished: boolean
    doublesOneGames: number | null
    doublesTwoGames: number | null
}

export const profileMatchesColumns: ColumnDef<ProfileMatchesTableData>[] = [
    {
        accessorKey: 'doublesOne',
        header: 'Doubles One',
        cell: ({ row }) => {
            const isFinished = row.getValue('isFinished')

            return (
                <>
                    {!isFinished ? (
                        <div className="p-0.5 font-normal text-left ">
                            {row.getValue('doublesOne')}
                        </div>
                    ) : (
                        <div className="p-0.5 font-thin text-left ">
                            {row.getValue('doublesOne')}
                        </div>
                    )}
                </>
            )
        },
    },
    {
        accessorKey: 'doublesOneGames',
        header: '',
    },
    {
        accessorKey: 'doublesTwo',
        header: 'Doubles Two',
        cell: ({ row }) => {
            const isFinished = row.getValue('isFinished')

            return (
                <>
                    {!isFinished ? (
                        <div className="p-0.5 font-normal text-left ">
                            {row.getValue('doublesTwo')}
                        </div>
                    ) : (
                        <div className="p-0.5 font-thin text-left ">
                            {row.getValue('doublesTwo')}
                        </div>
                    )}
                </>
            )
        },
    },

    {
        accessorKey: 'doublesTwoGames',
        header: '',
    },

    {
        accessorKey: 'matchStart',
        header: ({ column }) => {
            return (
                <div className="text-right">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Date
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-right">
                    {row.getValue('matchStart')
                        ? new Date(row.getValue('matchStart')).toLocaleString()
                        : null}
                </div>
            )
        },
    },
    // {
    //     accessorKey: 'categoryType',
    //     header: ({ column }) => {
    //         return (
    //             <div className="text-center ">
    //                 <Button
    //                     variant="ghost"
    //                     onClick={() =>
    //                         column.toggleSorting(column.getIsSorted() === 'asc')
    //                     }
    //                 >
    //                     Category Type
    //                     <ArrowUpDown className="w-4 h-4 ml-2" />
    //                 </Button>
    //             </div>
    //         )
    //     },
    //     cell: ({ row }) => {
    //         return (
    //             <div className="font-medium text-center">
    //                 {row.getValue('categoryType')}
    //             </div>
    //         )
    //     },
    // },
    // {
    //     accessorKey: 'id',
    //     header: () => <></>,
    //     cell: () => <></>, //!  maybe i don't need to instantiate this two columns
    //     enableHiding: false,
    // },

    {
        accessorKey: 'isFinished',
        header: () => <></>,
        cell: () => <></>, //!  maybe i don't need to instantiate this two columns
        enableHiding: false,
    },
    // { accessorKey: 'matches', header: 'Total matches' },
    // { accessorKey: 'matchesWins', header: 'Winning matches' },
    // {
    //     id: 'actions',
    //     cell: ({ row }) => {
    //         const doublesId = row.original.id
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
    //                         className="cursor-pointer"
    //                         onClick={() => {
    //                             console.log(doublesId)
    //                         }}
    //                     >
    //                         Remove doubles from your doubles list
    //                     </DropdownMenuItem>
    //                 </DropdownMenuContent>
    //             </DropdownMenu>
    //         )
    //     },
    // },
]
