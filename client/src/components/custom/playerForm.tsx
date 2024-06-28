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
import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '../ui/select'
import { Category } from '@/types/padel.types'

type PlayerFormProps = {
    onSubmit: SubmitHandler<playerFormObject>
    defaultValues: playerFormObject
    allCategories: Category[] | undefined
}

export type playerFormObject = {
    firstName: string
    lastName: string
    categoryId: string
    position: string
}

const formSchema = z.object({
    firstName: z.string(),
    lastName: z.string(),
    categoryId: z.string(),
    position: z.string(),
})

const PlayerForm: React.FC<PlayerFormProps> = ({
    onSubmit,
    defaultValues,
    allCategories,
}) => {
    const form = useForm({
        resolver: zodResolver(formSchema),
        defaultValues: defaultValues,
    })

    const { handleSubmit } = form

    return (
        <Form {...form}>
            <FormField
                name="firstName"
                control={form.control}
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>First name</FormLabel>
                        <FormControl>
                            <Input placeholder="First name" {...field} />
                        </FormControl>
                        <FormMessage />
                    </FormItem>
                )}
            />

            <FormField
                name="lastName"
                control={form.control}
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Last name</FormLabel>
                        <FormControl>
                            <Input placeholder="Last name" {...field} />
                        </FormControl>
                        <FormMessage />
                    </FormItem>
                )}
            />
            <FormField
                control={form.control}
                name="categoryId"
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Category</FormLabel>
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
                        </Select>

                        <FormMessage />
                    </FormItem>
                )}
            />

            <FormField
                control={form.control}
                name="position"
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Position</FormLabel>
                        <Select
                            onValueChange={field.onChange}
                            defaultValue={field.value}
                        >
                            <FormControl>
                                <SelectTrigger>
                                    <SelectValue placeholder="Select a position" />
                                </SelectTrigger>
                            </FormControl>
                            <SelectContent>
                                <SelectGroup>
                                    <SelectLabel>Position</SelectLabel>
                                    <SelectItem value="REVES">REVES</SelectItem>
                                    <SelectItem value="DRIVE">DRIVE</SelectItem>
                                </SelectGroup>
                            </SelectContent>
                        </Select>

                        <FormMessage />
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

export default PlayerForm
