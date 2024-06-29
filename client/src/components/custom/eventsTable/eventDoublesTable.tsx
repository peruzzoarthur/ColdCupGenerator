import {
    ColumnDef,
    Row,
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
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { axiosInstance } from '@/axiosInstance'
import { useGetRole } from '@/hooks/useGetRole'

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

    const { role } = useGetRole()

    const handleDeleteDoublesFromEvent = async (
        eventId: string,
        doublesId: string,
        categoryId: string
    ) => {
        try {
            const handleDeleteDoublesInEventDto = {
                eventId: eventId,
                doublesId: doublesId,
                categoryId: categoryId,
            }
            const { data: doubles }: { data: EventDouble } =
                await axiosInstance.post(
                    '/events/delete-doubles',
                    handleDeleteDoublesInEventDto
                )
            await refetchEventById()
            await refetchEventMatchesInfoById()
            return doubles
        } catch (error) {
            return error
        }
    }

    const tableActionDeleteDoubles = async (row: Row<TData>) => {
        const doublesId: string = row.getValue('id')

        const categoryId: string = row.getValue('catId')
        {
            if (eventId && doublesId && categoryId) {
                await handleDeleteDoublesFromEvent(
                    eventId,
                    doublesId,
                    categoryId
                )
            } else {
                throw new Error('Error deleting doubles from this event.')
            }
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
                                    {role === 'ADMIN' ? (
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
                                                        onClick={async () =>
                                                            tableActionDeleteDoubles(
                                                                row
                                                            )
                                                        }
                                                    >
                                                        Delete doubles from
                                                        event
                                                    </DropdownMenuItem>
                                                </DropdownMenuContent>
                                            </DropdownMenu>
                                        </TableCell>
                                    ) : null}
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
