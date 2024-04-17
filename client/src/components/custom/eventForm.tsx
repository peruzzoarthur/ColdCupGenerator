import React from 'react'
import { format } from 'date-fns'
import { FieldValues, SubmitHandler } from 'react-hook-form'
import { useForm } from 'react-hook-form'
import { z } from 'zod'
import { zodResolver } from '@hookform/resolvers/zod'
import { Button } from '@/components/ui/button'
import {
    Form,
    FormControl,
    FormField,
    FormItem,
    FormLabel,
    FormMessage,
} from '@/components/ui/form'
import { Input } from '@/components/ui/input'
import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '../ui/select'
import { Badge } from '../ui/badge'
import { Category, Place } from '@/types/padel.types'
import { Popover, PopoverContent, PopoverTrigger } from '../ui/popover'
import { cn } from '@/lib/utils'
import { CalendarIcon } from 'lucide-react'
import { Calendar } from '../ui/calendar'

type EventFormProps = {
    onSubmit: SubmitHandler<FieldValues>
    defaultValues: formObject
    allCategories: Category[] | undefined
    categoriesState: string[]
    setCategoriesState: React.Dispatch<React.SetStateAction<string[]>>
    allPlaces: Place[] | undefined
    placesState: string[]
    setPlacesState: React.Dispatch<React.SetStateAction<string[]>>
}

type formObject = {
    eventName: string
    categoriesIds: string
    placesIds: string
    startDate: Date
    finishDate: Date
}

const formSchema = z.object({
    eventName: z.string(),
    categoriesIds: z.string(),
    placesIds: z.string(),
    startDate: z.date(),
    finishDate: z.date(),
})

const EventForm: React.FC<EventFormProps> = ({
    onSubmit,
    defaultValues,
    allCategories,
    categoriesState,
    setCategoriesState,
    allPlaces,
    placesState,
    setPlacesState,
}) => {
    const form = useForm({
        resolver: zodResolver(formSchema),
        // defaultValues: defaultValues,
    })

    const { handleSubmit } = form

    const addCategory = (id: string) => {
        const stringArray: string[] = categoriesState.concat(id)
        setCategoriesState(stringArray)
    }

    const removeCategory = (deleteId: string) => {
        const stringArray: string[] = categoriesState.filter(
            (id) => id !== deleteId
        )
        setCategoriesState(stringArray)
    }

    const addPlace = (id: string) => {
        const stringArray: string[] = placesState.concat(id)
        setPlacesState(stringArray)
    }

    const removePlace = (deleteId: string) => {
        const stringArray: string[] = placesState.filter(
            (id) => id !== deleteId
        )
        setPlacesState(stringArray)
    }

    return (
        <Form {...form}>
            <FormField
                name="eventName"
                control={form.control}
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Event Name</FormLabel>
                        <FormControl>
                            <Input placeholder="Event Name" {...field} />
                        </FormControl>
                        <FormMessage />
                    </FormItem>
                )}
            />

            <FormField
                control={form.control}
                name="categoriesIds"
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Categories</FormLabel>
                        <Select
                            onValueChange={field.onChange}
                            defaultValue={field.value}
                        >
                            <FormControl>
                                <SelectTrigger>
                                    <SelectValue placeholder="Select a category" />
                                </SelectTrigger>
                            </FormControl>
                            <SelectContent>
                                <SelectGroup>
                                    <SelectLabel>ALL</SelectLabel>
                                    {allCategories?.map((c, index) => (
                                        <SelectItem value={c.id} key={index}>
                                            {c.level}
                                        </SelectItem>
                                    ))}
                                </SelectGroup>
                            </SelectContent>
                            <div className="flex justify-center">
                                <Button
                                    className="flex w-1/3 "
                                    onClick={() => addCategory(field.value)}
                                >
                                    Add Category
                                </Button>
                                <div className="flex-col justify-center w-1/3">
                                    {[...new Set(categoriesState)].map(
                                        (categoryId) => {
                                            const category =
                                                allCategories?.find(
                                                    (cat) =>
                                                        cat.id === categoryId
                                                )
                                            if (category) {
                                                return (
                                                    <Badge
                                                        onClick={() =>
                                                            removeCategory(
                                                                category.id
                                                            )
                                                        }
                                                        key={category.id}
                                                        className="justify-center w-5 h-5 text-center rounded-full ml-1 mt-2 mr-0.5"
                                                    >{`${category.level}`}</Badge>
                                                )
                                            } else {
                                                return null
                                            }
                                        }
                                    )}
                                </div>
                            </div>
                        </Select>
                        <FormMessage />
                    </FormItem>
                )}
            />
            <FormField
                control={form.control}
                name="placesIds"
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Places</FormLabel>
                        <Select
                            onValueChange={field.onChange}
                            defaultValue={field.value}
                        >
                            <FormControl>
                                <SelectTrigger>
                                    <SelectValue placeholder="Select a place" />
                                </SelectTrigger>
                            </FormControl>
                            <SelectContent>
                                <SelectGroup>
                                    <SelectLabel>Places</SelectLabel>
                                    {allPlaces?.map((p, index) => (
                                        <SelectItem value={p.id} key={index}>
                                            {p.name}
                                        </SelectItem>
                                    ))}
                                </SelectGroup>
                            </SelectContent>
                            <div className="flex justify-center">
                                <Button
                                    className="flex justify-center w-1/3 "
                                    onClick={() => addPlace(field.value)}
                                >
                                    Add Place
                                </Button>
                                <div className="flex-col justify-center w-1/3">
                                    {[...new Set(placesState)].map(
                                        (placeId) => {
                                            const place = allPlaces?.find(
                                                (p) => p.id === placeId
                                            )
                                            if (place) {
                                                return (
                                                    <Badge
                                                        onClick={() =>
                                                            removePlace(
                                                                place.id
                                                            )
                                                        }
                                                        key={place.id}
                                                        className="justify-center bg-slate-400 w-32 h-5 text-center rounded-full ml-1 mt-2 mr-0.5"
                                                    >{`${place.name}`}</Badge>
                                                )
                                            } else {
                                                // Handle the case where the category is not found
                                                return null // or you can render a default badge
                                            }
                                        }
                                    )}
                                </div>
                            </div>
                        </Select>
                        <FormMessage />
                    </FormItem>
                )}
            />
            <div className="flex justify-center mt-6 gap-x-6">
                <FormField
                    control={form.control}
                    name="startDate"
                    render={({ field }) => (
                        <FormItem className="flex flex-col">
                            <FormLabel>First day</FormLabel>
                            <Popover>
                                <PopoverTrigger asChild>
                                    <FormControl>
                                        <Button
                                            variant={'outline'}
                                            className={cn(
                                                'w-[240px] pl-3 text-left font-normal',
                                                !field.value &&
                                                    'text-muted-foreground'
                                            )}
                                        >
                                            {field.value ? (
                                                format(field.value, 'PPP')
                                            ) : (
                                                <span>Pick a date</span>
                                            )}
                                            <CalendarIcon className="w-4 h-4 ml-auto opacity-50" />
                                        </Button>
                                    </FormControl>
                                </PopoverTrigger>
                                <PopoverContent
                                    className="w-auto p-0"
                                    align="start"
                                >
                                    <Calendar
                                        mode="single"
                                        selected={field.value}
                                        onSelect={field.onChange}
                                        initialFocus
                                    />
                                </PopoverContent>
                            </Popover>
                            {/* <FormDescription>First day.</FormDescription> */}
                            <FormMessage />
                        </FormItem>
                    )}
                />

                <FormField
                    control={form.control}
                    name="finishDate"
                    render={({ field }) => (
                        <FormItem className="flex flex-col">
                            <FormLabel>Last day</FormLabel>
                            <Popover>
                                <PopoverTrigger asChild>
                                    <FormControl>
                                        <Button
                                            variant={'outline'}
                                            className={cn(
                                                'w-[240px] pl-3 text-left font-normal',
                                                !field.value &&
                                                    'text-muted-foreground'
                                            )}
                                        >
                                            {field.value ? (
                                                format(field.value, 'PPP')
                                            ) : (
                                                <span>Pick a date</span>
                                            )}
                                            <CalendarIcon className="w-4 h-4 ml-auto opacity-50" />
                                        </Button>
                                    </FormControl>
                                </PopoverTrigger>
                                <PopoverContent
                                    className="w-auto p-0"
                                    align="start"
                                >
                                    <Calendar
                                        mode="single"
                                        selected={field.value}
                                        onSelect={field.onChange}
                                        initialFocus
                                    />
                                </PopoverContent>
                            </Popover>
                            {/* <FormDescription>Last day.</FormDescription> */}
                            <FormMessage />
                        </FormItem>
                    )}
                />
            </div>
            <div className="flex justify-center mt-4">
                <Button
                    className="w-1/6 bg-opacity-65"
                    onClick={handleSubmit(onSubmit)}
                    type="button"
                >
                    Submit
                </Button>
            </div>
        </Form>
    )
}

export default EventForm
