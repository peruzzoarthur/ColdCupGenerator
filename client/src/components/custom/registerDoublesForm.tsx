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
import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '../ui/select'
import { Category, Double } from '@/types/padel.types'

type RegisterDoublesFormProps = {
    onSubmit: SubmitHandler<registerDoublesFormObject>
    defaultValues: registerDoublesFormObject
    eventCategories: Category[] | undefined
    categoriesState: string[]
    setCategoriesState: React.Dispatch<React.SetStateAction<string[]>>
    allDoubles: Double[] | undefined
}

export type registerDoublesFormObject = {
    doublesId: string
}

const formSchema = z.object({
    doublesId: z.string(),
})

const RegisterDoublesForm: React.FC<RegisterDoublesFormProps> = ({
    onSubmit,
    defaultValues,
    allDoubles,
}) => {
    const form = useForm({
        resolver: zodResolver(formSchema),
        defaultValues: defaultValues,
    })

    const { handleSubmit } = form

    // console.log(form.getValues())

    // console.log(allDoubles)

    return (
        <Form {...form}>
            <FormField
                control={form.control}
                name="doublesId"
                render={({ field }) => (
                    <FormItem className="max-h-96">
                        <FormLabel>Doubles</FormLabel>
                        <Select
                            onValueChange={field.onChange}
                            defaultValue={field.value}
                        >
                            <FormControl>
                                <SelectTrigger className="h-12 [&>span]:line-clamp-2 text-left">
                                    <SelectValue
                                        className="h-12"
                                        placeholder="Add doubles"
                                    />
                                </SelectTrigger>
                            </FormControl>
                            <SelectContent>
                                <SelectGroup>
                                    <SelectLabel>Doubles</SelectLabel>
                                    {allDoubles?.map((d, index) => (
                                        <SelectItem value={d.id} key={index}>
                                            {d.players.map((p, index) => (
                                                <p key={index}>
                                                    {`${p.firstName}
                                                    ${p.lastName}`}
                                                </p>
                                            ))}
                                        </SelectItem>
                                    ))}
                                </SelectGroup>
                            </SelectContent>
                        </Select>

                        <FormMessage />
                    </FormItem>
                )}
            />

            <div className="flex justify-center mt-4">
                <Button
                    className="w-1/8 bg-opacity-65"
                    onClick={handleSubmit(() => onSubmit(form.getValues()))}
                    type="button"
                >
                    Register Doubles
                </Button>
            </div>
        </Form>
    )
}

export default RegisterDoublesForm
