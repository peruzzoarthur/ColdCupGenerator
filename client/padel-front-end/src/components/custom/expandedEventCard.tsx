import { Cross2Icon, PersonIcon } from '@radix-ui/react-icons'
import { cn } from '@/lib/utils'
import { Button } from '@/components/ui/button'
import {
    Card,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { PadelEvent } from '@/types/padel.types'
import { useGetDoublesInEvent } from '@/hooks/useGetDoublesInEvent'

type ExtendedEventCardProps = React.ComponentProps<typeof Card> & {
    event: PadelEvent
    toggleEventOff: () => void
    // categoriesWithDoublesInEvent: Category[]
}

export function ExtendedEventCard({
    className,
    event,
    toggleEventOff,
    // categoriesWithDoublesInEvent,
}: ExtendedEventCardProps) {
    const { categoriesInEventWithDoublesRegistered } = useGetDoublesInEvent(
        event.id
    )

    console.log(categoriesInEventWithDoublesRegistered)
    return (
        <Card className={cn('w-[640px]', className)}>
            <CardHeader>
                <CardTitle>Event</CardTitle>
                <CardDescription>Add description.</CardDescription>
            </CardHeader>
            <CardContent className="grid gap-4">
                <div className="flex items-center p-4 space-x-4 border rounded-md ">
                    <div className="flex-1 space-y-1">
                        <p className="text-sm font-medium leading-none">
                            Categories
                        </p>
                        <div className="text-sm text-muted-foreground">
                            {event?.categories.map((event, index) => (
                                <p
                                    key={index}
                                >{`${event.level} - ${event.type}`}</p>
                            ))}
                        </div>
                    </div>
                </div>
                <div>
                    <div className="mb-4 grid grid-cols-[25px_1fr] items-start pb-4 last:mb-0 last:pb-0">
                        <span className="flex w-2 h-2 translate-y-1 rounded-full bg-slate-800" />
                        <div className="space-y-1">
                            <p className="font-medium leading-none text-md">
                                {event?.name}
                            </p>
                            <p className="text-sm text-black">Locations</p>

                            {event?.places.map((p, index) => (
                                <p
                                    key={index}
                                    className="text-sm text-muted-foreground"
                                >
                                    {p.name}{' '}
                                </p>
                            ))}
                        </div>
                    </div>
                </div>
                <div>
                    <h1 className="text-lg font-bold">Doubles registered</h1>
                    <div className="grid pb-4 mb-4 grid-cols-4rt grid-cols last:mb-0 last:pb-0">
                        {categoriesInEventWithDoublesRegistered && (
                            <div>
                                <div className="space-y-2">
                                    {categoriesInEventWithDoublesRegistered.map(
                                        (cat, outerIndex) => (
                                            <div key={outerIndex}>
                                                <p className="text-slate-700">{`[${cat.level} ${cat.type}]`}</p>
                                                {cat.doubles?.map(
                                                    (ed, innerIndex) => (
                                                        <div key={innerIndex}>
                                                            <div className="flex items-center p-4 space-x-4 border rounded-md">
                                                                <div className="flex-1 space-y-1">
                                                                    {ed.players.map(
                                                                        (
                                                                            p,
                                                                            playerIndex
                                                                        ) => (
                                                                            <div
                                                                                className="flex mb-1"
                                                                                key={
                                                                                    playerIndex
                                                                                }
                                                                            >
                                                                                <PersonIcon className="mr-2" />
                                                                                <p className="pb-2 mb-0.5">{`${p.firstName} ${p.lastName}`}</p>
                                                                            </div>
                                                                        )
                                                                    )}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    )
                                                )}
                                            </div>
                                        )
                                    )}
                                </div>
                            </div>
                        )}
                    </div>
                </div>
            </CardContent>
            <CardFooter>
                <Button onClick={() => toggleEventOff()} className="w-full">
                    <Cross2Icon className="w-4 h-4 mr-2" /> Close event
                </Button>
            </CardFooter>
        </Card>
    )
}
