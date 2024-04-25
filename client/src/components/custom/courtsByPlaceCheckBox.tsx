import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'
import { z } from 'zod'

import { Button } from '@/components/ui/button'
import { Checkbox } from '@/components/ui/checkbox'
import {
    Form,
    FormControl,
    FormDescription,
    FormField,
    FormItem,
    FormLabel,
    FormMessage,
} from '@/components/ui/form'
import { toast } from '@/components/ui/use-toast'
import { Court } from '@/types/padel.types'

const FormSchema = z.object({
    courts: z.array(z.string()).refine((value) => value.some((item) => item), {
        message: 'You have to select at least one item.',
    }),
})

type CourtsByPlaceCheckboxProps = {
    placeCourts: Court[]
    addCourt: (id: string) => void
    removeCourt: (id: string) => void
}
export function CourtsByPlaceCheckbox({
    placeCourts,
    addCourt,
    removeCourt,
}: CourtsByPlaceCheckboxProps) {
    const courts = placeCourts.map((c) => ({ id: c.id, label: c.name }))

    const form = useForm<z.infer<typeof FormSchema>>({
        resolver: zodResolver(FormSchema),
        defaultValues: {
            courts: ['recents', 'home'],
        },
    })

    function onSubmit(data: z.infer<typeof FormSchema>) {
        toast({
            title: 'You submitted the following values:',
            description: (
                <pre className="mt-2 w-[340px] rounded-md bg-slate-950 p-4">
                    <code className="text-white">
                        {JSON.stringify(data, null, 2)}
                    </code>
                </pre>
            ),
        })
    }

    return (
        <Form {...form}>
            <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-8">
                <FormField
                    control={form.control}
                    name="courts"
                    render={() => (
                        <FormItem>
                            <div className="mb-4">
                                <FormLabel className="text-base">
                                    Courts
                                </FormLabel>
                                <FormDescription>
                                    Select the courts you want to use for the
                                    event.
                                </FormDescription>
                            </div>
                            {courts.map((court) => (
                                <FormField
                                    key={court.id}
                                    control={form.control}
                                    name="courts"
                                    render={({ field }) => {
                                        return (
                                            <FormItem
                                                key={court.id}
                                                className="flex flex-row space-x-3 space-y-0 courts-start"
                                            >
                                                <FormControl>
                                                    <Checkbox
                                                        checked={field.value?.includes(
                                                            court.id
                                                        )}
                                                        onCheckedChange={(
                                                            checked
                                                        ) => {
                                                            if (checked) {
                                                                addCourt(
                                                                    court.id
                                                                )
                                                            }
                                                            if (!checked) {
                                                                removeCourt(
                                                                    court.id
                                                                )
                                                            }
                                                            return checked
                                                                ? field.onChange(
                                                                      [
                                                                          ...field.value,
                                                                          court.id,
                                                                      ]
                                                                  )
                                                                : field.onChange(
                                                                      field.value?.filter(
                                                                          (
                                                                              value
                                                                          ) =>
                                                                              value !==
                                                                              court.id
                                                                      )
                                                                  )
                                                        }}
                                                    />
                                                </FormControl>
                                                <FormLabel className="font-normal">
                                                    {court.label}
                                                </FormLabel>
                                            </FormItem>
                                        )
                                    }}
                                />
                            ))}
                            <FormMessage />
                        </FormItem>
                    )}
                />
                <Button type="submit">Submit</Button>
            </form>
        </Form>
    )
}