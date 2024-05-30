import React from 'react'
import { useForm, SubmitHandler } from 'react-hook-form'
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
import { Badge } from '../ui/badge'

type PlaceFormProps = {
    onSubmit: SubmitHandler<placeFormObject>
    defaultValues: placeFormObject
    courtsState: string[]
    setCourtsState: React.Dispatch<React.SetStateAction<string[]>>
}

export type placeFormObject = {
    name: string
    address: string
    courts: string
}

const formSchema = z.object({
    name: z.string(),
    address: z.string(),
    courts: z.string(),
})

const PlaceForm: React.FC<PlaceFormProps> = ({
    onSubmit,
    defaultValues,
    courtsState,
    setCourtsState,
}) => {
    const addCourt = (id: string) => {
        const stringArray: string[] = courtsState.concat(id)
        setCourtsState(stringArray)
    }

    const removeCourt = (deleteId: string) => {
        const stringArray: string[] = courtsState.filter(
            (id) => id !== deleteId
        )
        setCourtsState(stringArray)
    }

    const form = useForm({
        resolver: zodResolver(formSchema),
        defaultValues: defaultValues,
    })

    const { handleSubmit } = form

    return (
        <Form {...form}>
            <FormField
                name="name"
                control={form.control}
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Place name</FormLabel>
                        <FormControl>
                            <Input placeholder="Place name" {...field} />
                        </FormControl>
                        <FormMessage />
                    </FormItem>
                )}
            />

            <FormField
                name="address"
                control={form.control}
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Address</FormLabel>
                        <FormControl>
                            <Input placeholder="Address" {...field} />
                        </FormControl>
                        <FormMessage />
                    </FormItem>
                )}
            />

            <FormField
                name="courts"
                control={form.control}
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Courts</FormLabel>
                        <FormControl>
                            <>
                                <div className="flex flex-row">
                                    <Input
                                        placeholder="Court name"
                                        {...field}
                                    />
                                    <Button
                                        className="rounded-tl-sm rounded-bl-sm"
                                        onClick={() => addCourt(field.value)}
                                    >
                                        Add
                                    </Button>
                                </div>
                            </>
                        </FormControl>
                        <FormMessage />
                        {courtsState && (
                            <div className="flex flex-row justify-center space-x-2">
                                {courtsState.map((name) => (
                                    <Badge
                                        className="cursor-pointer "
                                        onClick={() => removeCourt(name)}
                                    >
                                        {name}
                                    </Badge>
                                ))}
                            </div>
                        )}
                    </FormItem>
                )}
            />

            <div className="flex justify-center mt-2">
                <Button
                    className="w-[100px] sm:w-1/6 bg-opacity-65"
                    onClick={handleSubmit(onSubmit)}
                    type="button"
                >
                    Submit
                </Button>
            </div>
        </Form>
    )
}

export default PlaceForm
