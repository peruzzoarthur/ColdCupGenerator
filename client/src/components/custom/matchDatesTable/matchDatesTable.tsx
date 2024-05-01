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
import { PlusCircle } from 'lucide-react'
import { Category } from '@/types/padel.types'
import { AvailableMatchesSelect } from '../availableMatchesSelect'

interface DataTableProps<TData, TValue> {
    columns: ColumnDef<TData, TValue>[]
    data: TData[]
    matchDateIdState: string | undefined
    setMatchDateIdState: React.Dispatch<
        React.SetStateAction<string | undefined>
    >
    matchAssignOn: boolean
    setMatchAssignOn: React.Dispatch<React.SetStateAction<boolean>>
    categories: Category[] | undefined
}

export function MatchDatesTable<TData, TValue>({
    columns,
    data,
    matchDateIdState,
    setMatchDateIdState,
    matchAssignOn,
    setMatchAssignOn,
    categories,
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

    return (
        <>
            {matchAssignOn ? (
                <div className="flex">
                    <AvailableMatchesSelect
                        matchDateId={matchDateIdState}
                        categories={categories}
                    />
                    <Button
                        variant="destructive"
                        onClick={() => setMatchAssignOn(false)}
                    >
                        close
                    </Button>
                </div>
            ) : null}
            <div className="flex w-full mt-2 border rounded-md">
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
                                    <TableCell
                                        key={`customTableCell_${row.id}`}
                                        className="mt-2 cursor-pointer"
                                        onClick={() => {
                                            console.log(
                                                row.getValue('matchDateId')
                                            )
                                            setMatchDateIdState(
                                                row.getValue('matchDateId')
                                            )
                                            setMatchAssignOn(true)
                                        }}
                                    >
                                        {' '}
                                        <PlusCircle />
                                    </TableCell>
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
