import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'
import { z } from 'zod'

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
import { Court } from '@/types/padel.types'

const FormSchema = z.object({
    courts: z.array(z.string()).refine((value) => value.some((item) => item), {
        message: 'You have to select at least one court.',
    }),
})

type CourtsByPlaceCheckboxProps = {
    placeCourts: Court[]
    addCourt: (id: string) => void
    removeCourt: (id: string) => void
    placeName: string
}
export function CourtsByPlaceCheckbox({
    placeCourts,
    addCourt,
    removeCourt,
    placeName,
}: CourtsByPlaceCheckboxProps) {
    const courts = placeCourts.map((c) => ({ id: c.id, label: c.name }))

    const form = useForm<z.infer<typeof FormSchema>>({
        resolver: zodResolver(FormSchema),
        defaultValues: {
            courts: courts.map((c) => c.id),
        },
    })

    return (
        <Form {...form}>
            <form className="space-y-8">
                <FormField
                    control={form.control}
                    name="courts"
                    render={() => (
                        <FormItem>
                            <div className="mb-4">
                                <FormLabel className="text-base">
                                    {placeName}
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
            </form>
        </Form>
    )
}
