import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuLabel,
    DropdownMenuRadioGroup,
    DropdownMenuRadioItem,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
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
import axios from 'axios'
import { Pencil1Icon } from '@radix-ui/react-icons'
import { useToast } from '../ui/use-toast'
import { useState } from 'react'
import { Button } from '../ui/button'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'

type DoublesCardProps = React.ComponentProps<typeof Card> & {
    doubles: Double
    setError: React.Dispatch<React.SetStateAction<boolean>>
    setErrorMessage: React.Dispatch<React.SetStateAction<string | undefined>>
    allCategories: Category[] | undefined
    refetchDoubles: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<Double[] | undefined, Error>>
    setShowAllDoubles: React.Dispatch<React.SetStateAction<boolean>>
}

export function DoublesCard({
    className,
    doubles,
    setError,
    setErrorMessage,
    allCategories,
    refetchDoubles,
    setShowAllDoubles,
}: DoublesCardProps) {
    const [reloadCard, setReloadCard] = useState(true)
    const [editOn, setEditOn] = useState(false)
    const [newCategoryId, setNewCategoryId] = useState<string | undefined>(
        'Edit doubles category'
    )

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
            const data = await axios.delete(
                `http://localhost:3000/doubles/${id}`
            )

            deleteDoublesToasted(doubles)
            setReloadCard(false)

            return data
        } catch (error) {
            setError(true)
            setErrorMessage('Error deleting user')
        }
    }

    const handleRemoveDoubles = async (doubles: Double) => {
        await handleDelete(doubles.id)
    }

    const updateDoublesToasted = (doubles: Double) => {
        toast({
            title: 'Success! 🙌',

            description: `Updated ${doubles.id}.`,
            className: 'bg-yellow-600 bg-opacity-60 text-white',
        })
    }

    const handleUpdateCategory = async (id: string, categoryId: string) => {
        console.log('Selected category ID:', newCategoryId)
        try {
            const requestBody = {
                categoryId: categoryId,
            }

            const data = await axios.patch(
                `http://localhost:3000/doubles/${id}`,
                requestBody
            )

            updateDoublesToasted(doubles)
            setReloadCard(false)

            return data
        } catch (error) {
            setError(true)
            console.error(error)
            setErrorMessage('Error updating user')
        }
    }

    const handleUpdateDoubles = async (
        doubles: Double,
        categoryId: string | undefined
    ) => {
        if (!categoryId) {
            return null
        }
        await handleUpdateCategory(doubles.id, categoryId)
        setShowAllDoubles(false)
        await refetchDoubles()
        setShowAllDoubles(true)
    }

    return (
        <>
            {reloadCard && (
                <>
                    {!editOn && (
                        <Card className={cn('w-[380px]', className)}>
                            <CardHeader>
                                <CardTitle>Doubles</CardTitle>
                                <CardDescription>
                                    {doubles.category?.level}{' '}
                                    {doubles.category?.type}
                                </CardDescription>
                            </CardHeader>
                            <CardContent className="grid gap-4">
                                <div className="flex items-center p-4 space-x-4 border rounded-md ">
                                    <div className="flex-1 space-y-1">
                                        <div className="text-sm text-muted-foreground">
                                            {doubles.players?.map(
                                                (p, index) => (
                                                    <p
                                                        key={index}
                                                    >{`${p.firstName} ${p.lastName}`}</p>
                                                )
                                            )}
                                        </div>
                                    </div>
                                </div>
                            </CardContent>
                            <CardFooter>
                                <Pencil1Icon
                                    onClick={() => {
                                        setEditOn(true)
                                    }}
                                    className="justify-end w-4 h-4 mr-2 hover:cursor-pointer"
                                />
                            </CardFooter>
                        </Card>
                    )}
                    {editOn && (
                        <>
                            <div className="flex ">
                                <div>
                                    <Card
                                        className={cn('w-[380px]', className)}
                                    >
                                        <CardHeader>
                                            <CardTitle>Doubles</CardTitle>
                                            <CardDescription>
                                                {newCategoryId}
                                            </CardDescription>
                                            <div className="flex">
                                                <DropdownMenu>
                                                    <DropdownMenuTrigger
                                                        asChild
                                                    >
                                                        <Button variant="outline">
                                                            Open
                                                        </Button>
                                                    </DropdownMenuTrigger>
                                                    <DropdownMenuContent className="w-56">
                                                        <DropdownMenuLabel>
                                                            Categories
                                                        </DropdownMenuLabel>
                                                        <DropdownMenuSeparator />
                                                        <DropdownMenuRadioGroup
                                                            value={
                                                                newCategoryId
                                                            }
                                                            onValueChange={
                                                                setNewCategoryId
                                                            }
                                                        >
                                                            {allCategories?.map(
                                                                (
                                                                    cat,
                                                                    index
                                                                ) => (
                                                                    <DropdownMenuRadioItem
                                                                        key={
                                                                            index
                                                                        }
                                                                        value={
                                                                            cat.id
                                                                        }
                                                                    >
                                                                        {
                                                                            cat.level
                                                                        }{' '}
                                                                        {
                                                                            cat.type
                                                                        }
                                                                    </DropdownMenuRadioItem>
                                                                )
                                                            )}
                                                        </DropdownMenuRadioGroup>
                                                    </DropdownMenuContent>
                                                </DropdownMenu>
                                            </div>
                                        </CardHeader>
                                        <CardContent className="grid gap-4">
                                            <div className="flex items-center p-4 space-x-4 border rounded-md ">
                                                <div className="flex-1 space-y-1">
                                                    <div className="text-sm text-muted-foreground">
                                                        {doubles.players?.map(
                                                            (p, index) => (
                                                                <p
                                                                    key={index}
                                                                >{`${p.firstName} ${p.lastName}`}</p>
                                                            )
                                                        )}
                                                    </div>
                                                </div>
                                            </div>
                                        </CardContent>
                                        <CardFooter>
                                            <Pencil1Icon
                                                onClick={() => setEditOn(false)}
                                                className="justify-end w-4 h-4 mr-2 hover:cursor-pointer"
                                            />
                                        </CardFooter>
                                        <div className="flex flex-row justify-between ml-4 mr-4">
                                            <Button
                                                onClick={async () =>
                                                    await handleUpdateDoubles(
                                                        doubles,
                                                        newCategoryId
                                                    )
                                                }
                                            >
                                                Update
                                            </Button>
                                            <Button
                                                className="bg-red-700"
                                                onClick={async () =>
                                                    await handleRemoveDoubles(
                                                        doubles
                                                    )
                                                }
                                            >
                                                Delete
                                            </Button>
                                        </div>
                                    </Card>
                                </div>
                            </div>
                        </>
                    )}
                </>
            )}
        </>
    )
}
