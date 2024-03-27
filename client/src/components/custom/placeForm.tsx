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

type PlaceFormProps = {
    onSubmit: SubmitHandler<placeFormObject>
    defaultValues: placeFormObject
}

export type placeFormObject = {
    name: string
    address: string
}

const formSchema = z.object({
    name: z.string(),
    address: z.string(),
})

const PlaceForm: React.FC<PlaceFormProps> = ({ onSubmit, defaultValues }) => {
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

            <div className="flex justify-center mt-2">
                <Button
                    className="w-1/6 bg-slate-600 bg-opacity-65"
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
