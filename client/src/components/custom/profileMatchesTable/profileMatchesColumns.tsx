import { Button } from '@/components/ui/button'

import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown } from 'lucide-react'

export type ProfileMatchesTableData = {
    id: string
    matchStart: string | null
    eventName: string | null
    doublesOne: string
    doublesOneId: string
    doublesTwo: string
    doublesTwoId: string
    isFinished: boolean
    doublesOneGames: number | null
    doublesTwoGames: number | null
    winnerDoublesId: string | null
}

export const profileMatchesColumns: ColumnDef<ProfileMatchesTableData>[] = [
    {
        accessorKey: 'doublesOne',
        header: 'Doubles One',
        cell: ({ row }) => {
            const isFinished = row.original.isFinished
            const winnerId = row.original.winnerDoublesId
            const doublesOneId = row.original.doublesOneId
            const isWinner = winnerId === doublesOneId
            return (
                <>
                    {isFinished ? (
                        isWinner ? (
                            <div className="p-0.5 font-bold text-left ">
                                {row.getValue('doublesOne')}
                            </div>
                        ) : (
                            <div className="p-0.5 font-thin text-left ">
                                {row.getValue('doublesOne')}
                            </div>
                        )
                    ) : (
                        <div className="p-0.5 font-normal text-left ">
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
        cell: ({ row }) => {
            const result: number = row.getValue('doublesOneGames')

            return <>{result === 0 ? null : <div>{result}</div>}</>
        },
    },

    {
        accessorKey: 'doublesTwo',
        header: 'Doubles Two',
        cell: ({ row }) => {
            const isFinished = row.original.isFinished
            const winnerId = row.original.winnerDoublesId
            const doublesTwoId = row.original.doublesTwoId
            const isWinner = winnerId === doublesTwoId
            return (
                <>
                    {isFinished ? (
                        isWinner ? (
                            <div className="p-0.5 font-bold text-left ">
                                {row.getValue('doublesTwo')}
                            </div>
                        ) : (
                            <div className="p-0.5 font-thin text-left ">
                                {row.getValue('doublesTwo')}
                            </div>
                        )
                    ) : (
                        <div className="p-0.5 font-normal text-left ">
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
        cell: ({ row }) => {
            const result: number = row.getValue('doublesTwoGames')

            return <>{result === 0 ? null : <div>{result}</div>}</>
        },
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
                <div className="font-normal text-right">
                    {row.getValue('matchStart')
                        ? new Date(row.getValue('matchStart')).toLocaleString()
                        : null}
                </div>
            )
        },
    },
    {
        accessorKey: 'eventName',
        header: () => <div className="font-medium text-center">Event </div>,
        cell: ({ row }) => {
            return (
                <div className="font-medium text-center">
                    {row.getValue('eventName')}
                </div>
            )
        },
    },
]
