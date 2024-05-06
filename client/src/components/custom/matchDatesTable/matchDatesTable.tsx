import {
    ColumnDef,
    ColumnFiltersState,
    SortingState,
    flexRender,
    getCoreRowModel,
    getFilteredRowModel,
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
import { Category, Court, MatchDate } from '@/types/padel.types'
import { AvailableMatchesSelectCard } from '../availableMatchesSelectCard'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { Input } from '@/components/ui/input'
import { File, ListFilter, Pencil, Search } from 'lucide-react'
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuLabel,
    DropdownMenuRadioGroup,
    DropdownMenuRadioItem,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { downloadScheduleToExcel } from '@/lib/xlsx'
import { MatchDatesTableProps } from './columns'
import { SelectDoubles } from './selectDoubles'
import { SelectCourt } from './selectCourt'

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
    uniqueValuesForDays: number[]
    matchDatesTableData: MatchDatesTableProps[] | undefined
    dayFilter: string
    setDayFilter: React.Dispatch<React.SetStateAction<string>>
    // doublesFilter: string
    setDoublesFilter: React.Dispatch<React.SetStateAction<string>>
    setCourtFilter: React.Dispatch<React.SetStateAction<string>>
    eventCourts: Court[] | undefined
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
    dayFilter,
    setDayFilter,
    uniqueValuesForDays,
    matchDatesTableData,
    setDoublesFilter,
    setCourtFilter,
    eventCourts,
}: DataTableProps<TData, TValue>) {
    const [sorting, setSorting] = React.useState<SortingState>([])
    const [globalFilters, setGlobalFilters] = React.useState<string>('')
    const [columnDoublesFilters, setColumnDoublesFilters] =
        React.useState<ColumnFiltersState>([])

    const table = useReactTable({
        data,
        columns,
        getCoreRowModel: getCoreRowModel(),
        getPaginationRowModel: getPaginationRowModel(),
        onSortingChange: setSorting,
        getSortedRowModel: getSortedRowModel(),
        getFilteredRowModel: getFilteredRowModel(),
        onGlobalFilterChange: setGlobalFilters,
        onColumnFiltersChange: setColumnDoublesFilters,

        state: {
            sorting: sorting,
            globalFilter: globalFilters,
            columnFilters: columnDoublesFilters,
        },
    })

    return (
        <>
            {/* Header with table func */}
            <div className="flex items-center gap-2 ml-auto">
                <Button
                    variant="outline"
                    size="sm"
                    className="gap-1 h-7"
                    onClick={() => {
                        if (!matchAssignOn) {
                            setMatchAssignOn(true)
                        } else {
                            setMatchAssignOn(false)
                        }
                    }}
                >
                    <Pencil className="h-3.5 w-3.5" />
                    <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                        Edit
                    </span>
                </Button>
                <DropdownMenu>
                    <DropdownMenuTrigger asChild>
                        <Button
                            variant="outline"
                            size="sm"
                            className="gap-1 h-7"
                        >
                            <ListFilter className="h-3.5 w-3.5" />
                            <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                                Filter
                            </span>
                        </Button>
                    </DropdownMenuTrigger>

                    <DropdownMenuContent className="w-56">
                        <DropdownMenuLabel>Days</DropdownMenuLabel>
                        <DropdownMenuSeparator />
                        <DropdownMenuRadioGroup
                            value={dayFilter}
                            onValueChange={setDayFilter}
                        >
                            <DropdownMenuRadioItem value="all">
                                All
                            </DropdownMenuRadioItem>
                            {uniqueValuesForDays.map((d, index) => (
                                <DropdownMenuRadioItem
                                    key={index}
                                    value={d.toString()}
                                >
                                    {d}
                                </DropdownMenuRadioItem>
                            ))}
                        </DropdownMenuRadioGroup>
                        <DropdownMenuSeparator />
                        <DropdownMenuLabel>Doubles</DropdownMenuLabel>

                        <SelectDoubles
                            eventCategories={categories}
                            setDoublesFilter={setDoublesFilter}
                        />

                        <DropdownMenuSeparator />
                        <DropdownMenuLabel>Courts</DropdownMenuLabel>

                        <SelectCourt
                            eventCourts={eventCourts}
                            setCourtFilter={setCourtFilter}
                        />
                    </DropdownMenuContent>
                </DropdownMenu>
                {matchDatesTableData && (
                    <Button
                        size="sm"
                        variant="outline"
                        className="gap-1 h-7"
                        onClick={() =>
                            downloadScheduleToExcel(matchDatesTableData)
                        } //!
                    >
                        <File className="h-3.5 w-3.5" />
                        <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                            Export
                        </span>
                    </Button>
                )}
            </div>

            <div className="flex flex-row items-start py-1 space-y-1">
                <div className="flex mt-3 mr-1">
                    <Search className="w-4 h-4 align-center" />
                </div>
                <Input
                    type="search"
                    placeholder="Filter by court, dates and number"
                    value={globalFilters}
                    onChange={(e) => {
                        setGlobalFilters(e.target.value)
                    }}
                    className="max-w-sm"
                />

                {/* <SelectDoubles
                    AORB={AORB.A}
                    eventCategories={categories}
                    table={table}
                    setColumnDoublesFilters={setColumnDoublesFilters}
                    setGlobalFilters={setGlobalFilters}
                /> */}
            </div>
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
