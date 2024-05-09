import { SubmitHandler, useForm } from 'react-hook-form'
import { z } from 'zod'
import {
    Form,
    FormControl,
    FormField,
    FormItem,
    FormLabel,
    FormMessage,
} from '../ui/form'
import { zodResolver } from '@hookform/resolvers/zod'
import { Input } from '../ui/input'
import { Select } from '@radix-ui/react-select'
import {
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '../ui/select'
import { Double } from '@/types/padel.types'
import { Button } from '../ui/button'

type MatchFormProps = {
    onSubmit: SubmitHandler<matchFormObject>
    defaultValues: matchFormObject
    doublesPlaying: Double[]
}

export type matchFormObject = {
    doublesOneGames: string
    doublesTwoGames: string
    winnerDoublesId: string
}

const formSchema = z.object({
    doublesOneGames: z.string(), //?
    doublesTwoGames: z.string(), //?
    winnerDoublesId: z.string(),
})

export const MatchForm: React.FC<MatchFormProps> = ({
    onSubmit,
    defaultValues,
    doublesPlaying,
}) => {
    const form = useForm({
        resolver: zodResolver(formSchema),
        defaultValues: defaultValues,
    })

    const { handleSubmit } = form

    return (
        <Form {...form}>
            <FormField
                name="doublesOneGames"
                control={form.control}
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>
                            {' '}
                            {`${doublesPlaying[0].players[0].firstName} ${doublesPlaying[0].players[0].lastName}`}
                            {' / '}
                            {`${doublesPlaying[0].players[1].firstName} ${doublesPlaying[0].players[1].lastName}`}
                        </FormLabel>
                        <FormControl>
                            <Input type="number" placeholder="0" {...field} />
                        </FormControl>
                        <FormMessage />
                    </FormItem>
                )}
            />
            <FormField
                name="doublesTwoGames"
                control={form.control}
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>
                            {' '}
                            {`${doublesPlaying[1].players[0].firstName} ${doublesPlaying[1].players[0].lastName}`}
                            {' / '}
                            {`${doublesPlaying[1].players[1].firstName} ${doublesPlaying[1].players[1].lastName}`}
                        </FormLabel>
                        <FormControl>
                            <Input type="number" placeholder="0" {...field} />
                        </FormControl>
                        <FormMessage />
                    </FormItem>
                )}
            />

            <FormField
                control={form.control}
                name="winnerDoublesId"
                render={({ field }) => (
                    <FormItem>
                        <FormLabel>Winner</FormLabel>
                        <Select
                            onValueChange={field.onChange}
                            defaultValue={field.value}
                        >
                            <FormControl>
                                <SelectTrigger>
                                    <SelectValue placeholder="Doubles" />
                                </SelectTrigger>
                            </FormControl>
                            <SelectContent>
                                <SelectGroup>
                                    <SelectLabel>Doubles</SelectLabel>
                                    {doublesPlaying?.map((d, index) => (
                                        <SelectItem value={d.id} key={index}>
                                            {`${d.players[0].firstName} ${d.players[0].lastName}`}
                                            {' / '}
                                            {`${d.players[1].firstName} ${d.players[1].lastName}`}
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
                    className="w-3/6 bg-opacity-65"
                    onClick={handleSubmit(onSubmit)}
                    type="button"
                >
                    Submit
                </Button>
            </div>
        </Form>
    )
}
