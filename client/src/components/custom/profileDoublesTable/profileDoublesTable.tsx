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
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuLabel,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
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
import { ProfileDoublesTableProps } from './profileDoublesColumns'
import { Double } from '@/types/padel.types'
import { axiosInstance } from '@/axiosInstance'
import { MoreHorizontal } from 'lucide-react'
import { useGetRole } from '@/hooks/useGetRole'

interface DataTableProps<TValue> {
    columns: ColumnDef<ProfileDoublesTableProps, TValue>[]
    data: ProfileDoublesTableProps[]
}

export function ProfileDoublesTable<TValue>({
    columns,
    data,
}: DataTableProps<TValue>) {
    const [sorting, setSorting] = React.useState<SortingState>([])
    const [pagination, setPagination] = React.useState({
        pageIndex: 0,
        pageSize: 5,
    })
    const { role } = useGetRole()

    const table = useReactTable({
        data,
        columns,
        getCoreRowModel: getCoreRowModel(),
        getPaginationRowModel: getPaginationRowModel(),
        onSortingChange: setSorting,
        getSortedRowModel: getSortedRowModel(),
        onPaginationChange: setPagination,
        state: {
            sorting,
            pagination,
        },
    })

    // const handleRemoveDoubles = async (id: string) => {
    //     try {
    //         const { data: removedDoubles }: { data: Double } =
    //             await axiosInstance.delete(`/categories/${id}`)
    //         return removedDoubles
    //     } catch (error) {
    //         return error
    //     }
    // }

    const tableActionRemoveDoubles = async (
        row: Row<ProfileDoublesTableProps>
    ) => {
        console.log(row.original)
        //  const id: string = row.original.id
        // {
        //     if (categoryId) {
        //         await handleDeleteCategory(categoryId)
        //         await refetchAllCategories()
        //     } else {
        //         throw new Error('Error deleting category.')
        //     }
        // }
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
                                                            tableActionRemoveDoubles(
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
