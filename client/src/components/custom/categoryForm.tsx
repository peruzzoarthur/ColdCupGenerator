import { CatType } from '@/types/padel.types'
import { zodResolver } from '@hookform/resolvers/zod'
import React from 'react'
import { SubmitHandler, useForm } from 'react-hook-form'
import { z } from 'zod'
import {
    Form,
    FormControl,
    FormField,
    FormItem,
    FormLabel,
    FormMessage,
} from '@/components/ui/form'
import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '../ui/select'
import { Input } from '../ui/input'
import { Button } from '../ui/button'
import { Card } from '../ui/card'
type CategoryFormProps = {
    onSubmit: SubmitHandler<categoryFormObject>
    defaultValues: categoryFormObject
}

export type categoryFormObject = {
    level: string
    type: CatType
}

const formSchema = z.object({
    level: z
        .string()
        .regex(/^[0-9]$/, { message: 'Values range from 1 to 9.' }),
    type: z.enum([CatType.ALL, CatType.M, CatType.F]),
})

export const CategoryForm: React.FC<CategoryFormProps> = ({
    onSubmit,
    defaultValues,
}) => {
    const form = useForm({
        resolver: zodResolver(formSchema),
        defaultValues: defaultValues,
    })

    const { handleSubmit } = form
    return (
        <Card className="flex flex-col items-center p-8 space-x-2">
            <div className="flex">
                <Form {...form}>
                    <FormField
                        control={form.control}
                        name="level"
                        render={({ field }) => (
                            <FormItem>
                                <FormLabel>Level</FormLabel>
                                <FormControl>
                                    <Input
                                        className="items-end justify-end w-[54px]"
                                        type="number"
                                        placeholder="0"
                                        {...field}
                                    />
                                </FormControl>
                                <FormMessage />
                            </FormItem>
                        )}
                    />

                    <FormField
                        name="type"
                        control={form.control}
                        render={({ field }) => (
                            <FormItem>
                                <FormLabel>Category type</FormLabel>
                                <Select
                                    onValueChange={field.onChange}
                                    defaultValue={field.value}
                                >
                                    <FormControl>
                                        <SelectTrigger>
                                            <SelectValue placeholder="Select category type" />
                                        </SelectTrigger>
                                    </FormControl>
                                    <SelectContent>
                                        <SelectGroup>
                                            <SelectLabel>Types</SelectLabel>
                                            <SelectItem value={CatType.ALL}>
                                                ALL
                                            </SelectItem>
                                            <SelectItem value={CatType.F}>
                                                F
                                            </SelectItem>
                                            <SelectItem value={CatType.M}>
                                                M
                                            </SelectItem>
                                        </SelectGroup>
                                    </SelectContent>
                                </Select>
                                <FormMessage />
                            </FormItem>
                        )}
                    />
                </Form>
            </div>
            <div className="flex justify-center mt-2">
                <Button
                    className="w-[100px]"
                    onClick={handleSubmit(onSubmit)}
                    type="button"
                >
                    Submit
                </Button>
            </div>
        </Card>
    )
}
