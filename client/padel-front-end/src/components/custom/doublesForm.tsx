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
import { Player } from '@/types/padel.types'

type DoublesFormProps = {
    onSubmit: SubmitHandler<doublesFormObject>
    defaultValues: doublesFormObject
    allPlayers: Player[] | undefined
}

export type doublesFormObject = {
    playerOneId: string
    playerTwoId: string
}

const formSchema = z.object({
    playerOneId: z.string(),
    playerTwoId: z.string(),
})

const DoublesForm: React.FC<DoublesFormProps> = ({
    onSubmit,
    defaultValues,
    allPlayers,
}) => {
    const form = useForm({
        resolver: zodResolver(formSchema),
        defaultValues: defaultValues,
    })

    const { handleSubmit } = form

    return (
        <Form {...form}>
            <FormField
                control={form.control}
                name="playerOneId"
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Player one</FormLabel>
                        <Select
                            onValueChange={field.onChange}
                            defaultValue={field.value}
                        >
                            <FormControl>
                                <SelectTrigger>
                                    <SelectValue placeholder="Player one" />
                                </SelectTrigger>
                            </FormControl>
                            <SelectContent>
                                <SelectGroup>
                                    <SelectLabel>All Players</SelectLabel>
                                    {allPlayers?.map((p, index) => (
                                        <SelectItem value={p.id} key={index}>
                                            {`${p.firstName} ${p.lastName}`}
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
                name="playerTwoId"
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Player two</FormLabel>
                        <Select
                            onValueChange={field.onChange}
                            defaultValue={field.value}
                        >
                            <FormControl>
                                <SelectTrigger>
                                    <SelectValue placeholder="Player two" />
                                </SelectTrigger>
                            </FormControl>
                            <SelectContent>
                                <SelectGroup>
                                    <SelectLabel>All Players</SelectLabel>
                                    {allPlayers?.map((p, index) => (
                                        <SelectItem value={p.id} key={index}>
                                            {`${p.firstName} ${p.lastName}`}
                                        </SelectItem>
                                    ))}
                                </SelectGroup>
                            </SelectContent>
                        </Select>

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

export default DoublesForm
