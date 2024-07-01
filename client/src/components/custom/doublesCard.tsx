import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { cn } from '@/lib/utils'
import {
    Card,
    CardContent,
    CardDescription,
    // CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { Category, Double } from '@/types/padel.types'
import { Pencil1Icon } from '@radix-ui/react-icons'
import { useToast } from '../ui/use-toast'
import { useState } from 'react'
import { Button } from '../ui/button'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { axiosInstance } from '@/axiosInstance'
import { ErrorAlert } from './errorAlert'

type DoublesCardProps = React.ComponentProps<typeof Card> & {
    doubles: Double

    allCategories: Category[] | undefined
    refetchDoubles: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<Double[] | undefined, Error>>
}

export function DoublesCard({
    className,
    doubles,

    allCategories,
    refetchDoubles,
}: DoublesCardProps) {
    const [editOn, setEditOn] = useState(false)
    const [newCategoryId, setNewCategoryId] = useState<string>('')
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { toast } = useToast()

    const deleteDoublesToasted = (doubles: Double) => {
        toast({
            title: 'Success! 🙌',

            description: `Deleted ${doubles.id}.`,
            className: 'bg-red-600 bg-opacity-60 text-white',
        })
    }

    const handleDelete = async (id: string) => {
        try {
            const data = await axiosInstance.delete(`/doubles/${id}`)
            deleteDoublesToasted(doubles)
            return data
        } catch (error) {
            setError(true)
            setErrorMessage('Error deleting user')
        }
    }

    const updateDoublesToast = (doubles: Double) => {
        toast({
            title: 'Success! 🙌',

            description: `Updated ${doubles.id}.`,
            className: 'bg-yellow-600 bg-opacity-60 text-white',
        })
    }

    const handleUpdateCategory = async (id: string, categoryId: string) => {
        try {
            const requestBody = {
                categoryId: categoryId,
            }

            const data = await axiosInstance.patch(
                `/doubles/${id}`,
                requestBody
            )
            await refetchDoubles()
            updateDoublesToast(doubles)
            setEditOn(false)

            return data
        } catch (error) {
            setError(true)
            setErrorMessage('Error updating user')
        }
    }

    return (
        <Card className={cn('w-[280px] sm:w-[320px] flex flex-col', className)}>
            <CardHeader>
                <CardTitle>Doubles</CardTitle>
                {editOn ? (
                    <div className="flex">
                        {allCategories && doubles.category && (
                            <Select
                                onValueChange={(value) => {
                                    setNewCategoryId(value)
                                }}
                            >
                                <SelectTrigger className="w-[180px]">
                                    <SelectValue
                                        placeholder={`${doubles.category.level} ${doubles.category.type}`}
                                    />
                                </SelectTrigger>
                                <SelectContent>
                                    <SelectGroup>
                                        <SelectLabel>Categories</SelectLabel>
                                        {allCategories?.map((c) => (
                                            <SelectItem
                                                value={c.id}
                                            >{`${c.level} ${c.type}`}</SelectItem>
                                        ))}
                                    </SelectGroup>
                                </SelectContent>
                            </Select>
                        )}
                    </div>
                ) : (
                    doubles.category && (
                        <CardDescription>{`${doubles.category.level} ${doubles.category.type}`}</CardDescription>
                    )
                )}
            </CardHeader>
            <CardContent className="grid gap-4">
                <div className="flex p-4 space-x-4 border rounded-md ">
                    <div className="flex-1 space-y-1 text-sm text-muted-foreground">
                        {doubles.players?.map((p, index) => (
                            <p key={index}>{`${p.firstName} ${p.lastName}`}</p>
                        ))}
                    </div>
                </div>
            </CardContent>
            <CardFooter className="justify-center">
                <Pencil1Icon
                    onClick={() => setEditOn((prevState) => !prevState)}
                    className="justify-end w-4 h-4 hover:cursor-pointer"
                />
            </CardFooter>
            {editOn ? (
                <div className="flex flex-row justify-center mb-4 space-x-4">
                    <Button
                        onClick={async () =>
                            await handleUpdateCategory(
                                doubles.id,
                                newCategoryId
                            )
                        }
                    >
                        Update
                    </Button>
                    <Button
                        variant="destructive"
                        onClick={async () => await handleDelete(doubles.id)}
                    >
                        Delete
                    </Button>
                </div>
            ) : null}
            {isError && (
                <div
                    onClick={() => setError(false)}
                    className="grid w-full p-2"
                >
                    <ErrorAlert message={errorMessage} />
                </div>
            )}
        </Card>
    )
}
