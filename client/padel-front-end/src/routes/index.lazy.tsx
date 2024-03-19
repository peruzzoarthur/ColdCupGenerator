import { createLazyFileRoute } from '@tanstack/react-router'
import React from 'react'
import { z } from 'zod'
import { useForm } from 'react-hook-form'
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
import axios from 'axios'
import { useGetCategories } from '@/hooks/useGetCategories'

type formObject = {
    eventName: string
    categoriesIds: string
    placesIds: string
}

const formSchema = z.object({
    eventName: z.string(),
    categoriesIds: z.string(),
    placesIds: z.string(),
})

// todo - later check for this z.array(z.string()),

export const Route = createLazyFileRoute('/')({
    component: Index,
})

function Index() {
    const form = useForm({
        resolver: zodResolver(formSchema),
        defaultValues: {
            eventName: '',
            categoriesIds: '',
            placesIds: '',
        },
    })

    const { handleSubmit } = form

    const { categoriesIds } = useGetCategories()

    console.log(categoriesIds)

    const onSubmit = async (input: formObject) => {
        // const eventName: string = JSON.parse(input.eventName)
        const categoriesIds: string[] = JSON.parse(input.categoriesIds)
        const placesIds: string[] = JSON.parse(input.placesIds)
        const requestBody = {
            name: input.eventName,
            categoriesIds: categoriesIds,
            placesIds: placesIds,
        }

        const data = await axios.post(
            'http://localhost:3000/events/',
            requestBody
        )

        console.log(data)
    }

    return (
        <>
            {categoriesIds?.map((id, index) => (
                <h2 key={index} className="text-white bg-black">
                    {id}
                </h2>
            ))}
            <div className="flex flex-col ">
                <Form {...form}>
                    <FormField
                        name="eventName"
                        control={form.control}
                        render={({ field }) => (
                            <FormItem>
                                <FormLabel>Event Name</FormLabel>
                                <FormControl>
                                    <Input
                                        placeholder="Event Name"
                                        {...field}
                                    />
                                </FormControl>
                                <FormMessage />
                            </FormItem>
                        )}
                    />
                    <FormField
                        name="categoriesIds"
                        control={form.control}
                        render={({ field }) => (
                            <FormItem>
                                <FormLabel>Categories</FormLabel>
                                <FormControl>
                                    <Input
                                        type="text"
                                        placeholder="Categories"
                                        {...field}
                                    />
                                </FormControl>
                                <FormMessage />
                            </FormItem>
                        )}
                    />
                    <FormField
                        name="placesIds"
                        control={form.control}
                        render={({ field }) => (
                            <FormItem>
                                <FormLabel>Places</FormLabel>
                                <FormControl>
                                    <Input placeholder="Places" {...field} />
                                </FormControl>
                                <FormMessage />
                            </FormItem>
                        )}
                    />
                    <div className="flex justify-center mt-2">
                        <Button
                            className="w-1/3"
                            onClick={handleSubmit(onSubmit)}
                            type="button"
                        >
                            Submit
                        </Button>
                    </div>
                </Form>
            </div>
        </>
    )
}
