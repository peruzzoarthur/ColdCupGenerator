import { Button } from '@/components/ui/button'
import { Court } from '@/types/padel.types'

import { ColumnDef } from '@tanstack/react-table'
import { ArrowUpDown } from 'lucide-react'

export type PlacesTableProps = {
    id: string
    name: string
    address: string
    courts: Court[]
}

export const placesColumns: ColumnDef<PlacesTableProps>[] = [
    {
        accessorKey: 'name',
        header: ({ column }) => {
            return (
                <div className="text-right">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Name
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-right">
                    {row.getValue('name')}
                </div>
            )
        },
    },
    {
        accessorKey: 'address',
        header: ({ column }) => {
            return (
                <div className="text-center ">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Address
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            return (
                <div className="font-medium text-center">
                    {row.getValue('address')}
                </div>
            )
        },
    },

    {
        accessorKey: 'courts',
        header: ({ column }) => {
            return (
                <div className="text-center ">
                    <Button
                        variant="ghost"
                        onClick={() =>
                            column.toggleSorting(column.getIsSorted() === 'asc')
                        }
                    >
                        Courts
                        <ArrowUpDown className="w-4 h-4 ml-2" />
                    </Button>
                </div>
            )
        },
        cell: ({ row }) => {
            const courts = row.original.courts
            const courtNames = courts.map((c) => c.name).join(', ')
            return <div className="font-medium text-center">{courtNames}</div>
        },
    },
]
