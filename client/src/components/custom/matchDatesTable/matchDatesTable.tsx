import {
    ColumnDef,
    ColumnFiltersState,
    SortingState,
    VisibilityState,
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
import {
    Category,
    Court,
    EventDouble,
    EventMatch,
    Match,
    MatchDate,
    PadelEvent,
} from '@/types/padel.types'
import { EditScheduleCard } from '../editScheduleCard'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { Input } from '@/components/ui/input'
import {
    ArrowLeftCircle,
    ArrowRightCircle,
    File,
    ListFilter,
    Pencil,
    Search,
} from 'lucide-react'
import {
    DropdownMenu,
    DropdownMenuCheckboxItem,
    DropdownMenuContent,
    // DropdownMenuLabel,
    // DropdownMenuRadioGroup,
    // DropdownMenuRadioItem,
    // DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { downloadScheduleToExcel } from '@/lib/xlsx'
import { MatchDatesTableProps } from './columns'
// import { SelectDoubles } from './selectDoubles'
// import { SelectCourt } from './selectCourt'
// import { SelectCategory } from './selectCategory'
import { useGetRole } from '@/hooks/useGetRole'
import { ScheduleFiltersCard } from '../scheduleFiltersCard'

interface DataTableProps<TValue> {
    eventDoubles: EventDouble[] | undefined
    columns: ColumnDef<MatchDatesTableProps, TValue>[]
    data: MatchDatesTableProps[]
    matchDateIdState: string | undefined
    setMatchDateIdState: React.Dispatch<
        React.SetStateAction<string | undefined>
    >
    matchIdState: string | undefined
    setMatchIdState: React.Dispatch<React.SetStateAction<string | undefined>>
    matchAssignOn: boolean
    setMatchAssignOn: React.Dispatch<React.SetStateAction<boolean>>
    categories: Category[] | undefined
    eventMatches: EventMatch[] | undefined
    refetchEventMatchDates: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<MatchDate[] | undefined, Error>>
    matchDates: MatchDate[] | undefined
    matchDateById: MatchDate | undefined
    isFetchingMatchDateById: boolean
    refetchMatchDateById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<MatchDate | undefined, Error>>
    matchById: Match | undefined
    isFetchingMatchById: boolean
    refetchMatchById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<Match | undefined, Error>>
    uniqueValuesForDays: number[]
    matchDatesTableData: MatchDatesTableProps[] | undefined
    dayFilter: string
    setDayFilter: React.Dispatch<React.SetStateAction<string>>
    setDoublesFilter: React.Dispatch<React.SetStateAction<string>>
    setCourtFilter: React.Dispatch<React.SetStateAction<string>>
    eventCourts: Court[] | undefined

    setCategoryFilter: React.Dispatch<React.SetStateAction<string>>
    eventCategories: Category[] | undefined
    hasMatchFilter: boolean
    setHasMatchFilter: React.Dispatch<React.SetStateAction<boolean>>
    refetchEventById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
}
export function MatchDatesTable<TValue>({
    columns,
    data,
    matchDateIdState,
    setMatchDateIdState,
    matchAssignOn,
    setMatchAssignOn,
    matchIdState,
    categories,
    eventMatches,
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
    eventCategories,
    setCategoryFilter,
    matchById,
    refetchMatchById,
    isFetchingMatchById,
    eventDoubles,
    hasMatchFilter,
    setHasMatchFilter,
    refetchEventById,
}: DataTableProps<TValue>) {
    const [columnVisibility, setColumnVisibility] =
        React.useState<VisibilityState>({})
    const [sorting, setSorting] = React.useState<SortingState>([])
    const [globalFilters, setGlobalFilters] = React.useState<string>('')
    const [columnDoublesFilters, setColumnDoublesFilters] =
        React.useState<ColumnFiltersState>([])
    const [scheduleFiltersOn, setScheduleFiltersOn] =
        React.useState<boolean>(false)
    const { role } = useGetRole()

    const changeCardMatchdate = async (
        prevOrNext: string,
        data: MatchDatesTableProps[],
        matchDateId?: string
    ) => {
        if (matchDateId) {
            console.log(data)
            const id = data.findIndex((d) => d.matchDateId === matchDateId)
            console.log(id)
            if (prevOrNext === 'prev') {
                setMatchDateIdState(data[id - 1].matchDateId ?? matchDateId)
            }
            if (prevOrNext === 'next') {
                setMatchDateIdState(data[id + 1].matchDateId ?? matchDateId)
            }
        }
        await refetchMatchById()
        await refetchMatchDateById()
        await refetchEventMatchDates()
    }

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
        onColumnVisibilityChange: setColumnVisibility,

        state: {
            sorting: sorting,
            globalFilter: globalFilters,
            columnFilters: columnDoublesFilters,
            columnVisibility: columnVisibility,
        },
    })

    return (
        <>
            {/* Header with Filters, Export and Edit */}
            <div className="flex items-center gap-2 ml-auto">
                {role === 'ADMIN' ? (
                    <>
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
                        <Button
                            variant="outline"
                            size="sm"
                            className="gap-1 h-7"
                            onClick={() =>
                                setScheduleFiltersOn((prevState) => !prevState)
                            }
                        >
                            <ListFilter className="h-3.5 w-3.5" />
                            <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                                Filter
                            </span>
                        </Button>

                        {/* <DropdownMenu>
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
                                <DropdownMenuLabel>Matches</DropdownMenuLabel>
                                <DropdownMenuCheckboxItem
                                    checked={hasMatchFilter}
                                    onCheckedChange={setHasMatchFilter}
                                >
                                    With date defined
                                </DropdownMenuCheckboxItem>
                                <DropdownMenuSeparator />
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
                                    eventDoubles={eventDoubles}
                                />

                                <DropdownMenuSeparator />
                                <DropdownMenuLabel>Courts</DropdownMenuLabel>

                                <SelectCourt
                                    eventCourts={eventCourts}
                                    setCourtFilter={setCourtFilter}
                                />

                                <DropdownMenuSeparator />
                                <DropdownMenuLabel>
                                    Categories
                                </DropdownMenuLabel>

                                <SelectCategory
                                    eventCategories={eventCategories}
                                    setCategoryFilter={setCategoryFilter}
                                />
                            </DropdownMenuContent>
                        </DropdownMenu> */}
                    </>
                ) : null}

                {matchDatesTableData && (
                    <Button
                        size="sm"
                        variant="outline"
                        className="gap-1 h-7"
                        onClick={() =>
                            downloadScheduleToExcel(matchDatesTableData)
                        }
                    >
                        <File className="h-3.5 w-3.5" />
                        <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                            Export
                        </span>
                    </Button>
                )}
            </div>

            {/* Search && Visibility  */}
            <div className="flex justify-end w-5/6 mb-2">
                <div className="flex flex-row items-start w-full py-1 space-y-1">
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
                        className="mr-5"
                    />
                    <DropdownMenu>
                        <DropdownMenuTrigger className="px-4 border rounded-md shadow-sm h-9 border-input bg-background hover:bg-accent hover:text-accent-foreground">
                            Columns
                        </DropdownMenuTrigger>
                        <DropdownMenuContent align="end">
                            {table
                                .getAllColumns()
                                .filter((column) => column.getCanHide())
                                .map((column) => {
                                    return (
                                        <DropdownMenuCheckboxItem
                                            key={column.id}
                                            className="capitalize"
                                            checked={column.getIsVisible()}
                                            onCheckedChange={(
                                                value: boolean
                                            ) => {
                                                column.toggleVisibility(!!value)
                                            }}
                                        >
                                            {column.id}
                                        </DropdownMenuCheckboxItem>
                                    )
                                })}
                        </DropdownMenuContent>
                    </DropdownMenu>
                </div>
            </div>

            <div className="flex">
                {/* Edit matchDate  */}
                {scheduleFiltersOn ? (
                    <ScheduleFiltersCard
                        setScheduleFiltersOn={setScheduleFiltersOn}
                        categories={categories}
                        dayFilter={dayFilter}
                        eventCategories={eventCategories}
                        eventCourts={eventCourts}
                        eventDoubles={eventDoubles}
                        hasMatchFilter={hasMatchFilter}
                        setCategoryFilter={setCategoryFilter}
                        setCourtFilter={setCourtFilter}
                        setDayFilter={setDayFilter}
                        setDoublesFilter={setDoublesFilter}
                        setHasMatchFilter={setHasMatchFilter}
                        uniqueValuesForDays={uniqueValuesForDays}
                    />
                ) : null}

                {matchAssignOn ? (
                    <div className="flex items-center justify-center w-full mt-2 mb-2">
                        <Button
                            onClick={async () =>
                                changeCardMatchdate(
                                    'prev',
                                    data,
                                    matchDateIdState
                                )
                            }
                            variant="ghost"
                        >
                            <ArrowLeftCircle />
                        </Button>

                        <EditScheduleCard
                            isFetchingMatchDateById={isFetchingMatchDateById}
                            setMatchDateIdState={setMatchDateIdState}
                            matchDateIdState={matchDateIdState}
                            categories={categories}
                            eventMatches={eventMatches}
                            matchIdState={matchIdState}
                            setMatchIdState={setMatchIdState}
                            setMatchAssignOn={setMatchAssignOn}
                            refetchEventMatchDates={refetchEventMatchDates}
                            matchDates={matchDates}
                            matchDateById={matchDateById}
                            refetchMatchDateById={refetchMatchDateById}
                            matchById={matchById}
                            refetchMatchById={refetchMatchById}
                            isFetchingMatchById={isFetchingMatchById}
                            refetchEventById={refetchEventById}
                        />
                        <Button
                            onClick={async () =>
                                changeCardMatchdate(
                                    'next',
                                    data,
                                    matchDateIdState
                                )
                            }
                            variant="ghost"
                        >
                            <ArrowRightCircle />
                        </Button>
                    </div>
                ) : null}
            </div>

            {/* The table  */}
            <div className="flex-col w-full mt-2 border rounded-md">
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

            {/* Previous / Next  */}
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
