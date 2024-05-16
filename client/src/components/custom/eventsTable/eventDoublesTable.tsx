import {
    ColumnDef,
    SortingState,
    flexRender,
    getCoreRowModel,
    getPaginationRowModel,
    getSortedRowModel,
    useReactTable,
} from '@tanstack/react-table'

import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from '@/components/ui/table'
import { Button } from '@/components/ui/button'
import React from 'react'
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuLabel,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { MoreHorizontal } from 'lucide-react'
import { EventDouble, PadelEvent } from '@/types/padel.types'
import axios from 'axios'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'

interface DataTableProps<TData, TValue> {
    columns: ColumnDef<TData, TValue>[]
    data: TData[]
    eventId: string | undefined
    isActive: boolean | undefined
    refetchEventById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
    refetchEventMatchesInfoById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
}

export function EventDoublesTable<TData, TValue>({
    columns,
    data,
    eventId,
    refetchEventById,
    refetchEventMatchesInfoById,
    isActive,
}: DataTableProps<TData, TValue>) {
    const [sorting, setSorting] = React.useState<SortingState>([])
    const table = useReactTable({
        data,
        columns,
        getCoreRowModel: getCoreRowModel(),
        getPaginationRowModel: getPaginationRowModel(),
        onSortingChange: setSorting,
        getSortedRowModel: getSortedRowModel(),
        state: {
            sorting,
        },
    })

    const handleDeleteDoublesFromEvent = async (
        eventId: string,
        doublesId: string,
        categoryId: string

        // autoPopulate: boolean
    ) => {
        try {
            const handleDeleteDoublesInEventDto = {
                eventId: eventId,
                doublesId: doublesId,
                categoryId: categoryId,
            }
            const { data: doubles }: { data: EventDouble } = await axios.post(
                `${import.meta.env.VITE_SERVER_URL}/events/delete-doubles`,
                handleDeleteDoublesInEventDto
            )
            await refetchEventById()
            await refetchEventMatchesInfoById()
            return doubles
        } catch (error) {
            return error
        }
    }

    return (
        <>
            <div className="flex w-full border rounded-md">
                <Table>
                    <TableHeader>
                        {table.getHeaderGroups().map((headerGroup) => (
                            <TableRow key={headerGroup.id}>
                                {headerGroup.headers.map((header) => {
                                    return (
                                        <TableHead key={header.id}>
                                            {header.isPlaceholder
                                                ? null
                                                : flexRender(
                                                      header.column.columnDef
                                                          .header,
                                                      header.getContext()
                                                  )}
                                        </TableHead>
                                    )
                                })}
                            </TableRow>
                        ))}
                    </TableHeader>
                    <TableBody>
                        {table.getRowModel().rows?.length ? (
                            table.getRowModel().rows.map((row) => (
                                <TableRow
                                    key={row.id}
                                    data-state={
                                        row.getIsSelected() && 'selected'
                                    }
                                >
                                    {row.getVisibleCells().map((cell) => (
                                        <TableCell key={cell.id}>
                                            {flexRender(
                                                cell.column.columnDef.cell,
                                                cell.getContext()
                                            )}
                                        </TableCell>
                                    ))}
                                    {isActive ? null : (
                                        <TableCell>
                                            <DropdownMenu>
                                                <DropdownMenuTrigger asChild>
                                                    <Button
                                                        className="w-8 h-8 p-0"
                                                        variant="ghost"
                                                    >
                                                        <MoreHorizontal className="w-4 h-4" />
                                                    </Button>
                                                </DropdownMenuTrigger>
                                                <DropdownMenuContent>
                                                    <DropdownMenuLabel>
                                                        Actions
                                                    </DropdownMenuLabel>
                                                    <DropdownMenuItem
                                                        onClick={() => {
                                                            const doublesId =
                                                                row.getValue(
                                                                    'id'
                                                                ) as string

                                                            const categoryId =
                                                                row.getValue(
                                                                    'catId'
                                                                ) as string
                                                            {
                                                                if (
                                                                    eventId &&
                                                                    doublesId &&
                                                                    categoryId
                                                                ) {
                                                                    handleDeleteDoublesFromEvent(
                                                                        eventId,
                                                                        doublesId,
                                                                        categoryId
                                                                    )
                                                                } else {
                                                                    console.log(
                                                                        'im an error'
                                                                    )
                                                                    return
                                                                }
                                                            }
                                                        }}
                                                    >
                                                        Delete doubles from
                                                        event
                                                    </DropdownMenuItem>
                                                </DropdownMenuContent>
                                            </DropdownMenu>
                                        </TableCell>
                                    )}
                                </TableRow>
                            ))
                        ) : (
                            <TableRow>
                                <TableCell
                                    colSpan={columns.length}
                                    className="h-24 text-center"
                                >
                                    No results.
                                </TableCell>
                            </TableRow>
                        )}
                    </TableBody>
                </Table>
            </div>
            <div className="flex items-center justify-end py-4 space-x-2">
                <Button
                    variant="outline"
                    size="sm"
                    onClick={() => table.previousPage()}
                    disabled={!table.getCanPreviousPage()}
                >
                    Previous
                </Button>
                <Button
                    variant="outline"
                    size="sm"
                    onClick={() => table.nextPage()}
                    disabled={!table.getCanNextPage()}
                >
                    Next
                </Button>
            </div>
        </>
    )
}
