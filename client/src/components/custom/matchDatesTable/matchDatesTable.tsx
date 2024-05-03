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
import { CircleIcon, CrossCircledIcon } from '@radix-ui/react-icons'
import { Category, MatchDate } from '@/types/padel.types'
import { AvailableMatchesSelectCard } from '../availableMatchesSelectCard'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
// import { useGetMatchDateById } from '@/hooks/useGetMatchDateById'

interface DataTableProps<TData, TValue> {
    columns: ColumnDef<TData, TValue>[]
    data: TData[]
    matchDateIdState: string | undefined
    setMatchDateIdState: React.Dispatch<
        React.SetStateAction<string | undefined>
    >
    matchIdState: string | undefined
    setMatchIdState: React.Dispatch<React.SetStateAction<string | undefined>>
    matchAssignOn: boolean
    setMatchAssignOn: React.Dispatch<React.SetStateAction<boolean>>
    categories: Category[] | undefined
    refetchEventMatchDates: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<MatchDate[] | undefined, Error>>
    matchDates: MatchDate[] | undefined
    matchDateById: MatchDate | undefined
    isFetchingMatchDateById: boolean
    refetchMatchDateById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<MatchDate | undefined, Error>>
}

export function MatchDatesTable<TData, TValue>({
    columns,
    data,
    matchDateIdState,
    setMatchDateIdState,
    matchAssignOn,
    setMatchAssignOn,
    matchIdState,
    categories,
    setMatchIdState,
    refetchEventMatchDates,
    matchDates,
    matchDateById,
    isFetchingMatchDateById,
    refetchMatchDateById,
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
            <div className="flex-col w-full mt-2 border rounded-md">
                {matchAssignOn ? (
                    <div className="flex justify-center w-full mt-2 mb-2">
                        <AvailableMatchesSelectCard
                            isFetchingMatchDateById={isFetchingMatchDateById}
                            setMatchDateIdState={setMatchDateIdState}
                            matchDateIdState={matchDateIdState}
                            categories={categories}
                            matchIdState={matchIdState}
                            setMatchIdState={setMatchIdState}
                            setMatchAssignOn={setMatchAssignOn}
                            refetchEventMatchDates={refetchEventMatchDates}
                            matchDates={matchDates}
                            matchDateById={matchDateById}
                            refetchMatchDateById={refetchMatchDateById}
                        />
                    </div>
                ) : null}
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
                                    {matchAssignOn &&
                                        !isFetchingMatchDateById && (
                                            <TableCell
                                                key={`customTableCell_${row.id}`}
                                                className="mt-2 cursor-pointer"
                                                onClick={async () => {
                                                    setMatchDateIdState(
                                                        row.getValue(
                                                            'matchDateId'
                                                        )
                                                    )

                                                    setMatchIdState(
                                                        row.getValue('matchId')
                                                    )
                                                }}
                                            >
                                                {matchDateIdState ===
                                                row.getValue('matchDateId') ? (
                                                    <CrossCircledIcon />
                                                ) : (
                                                    <CircleIcon />
                                                )}
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
