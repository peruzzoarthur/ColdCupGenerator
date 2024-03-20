import { Cross2Icon } from '@radix-ui/react-icons'

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

type ExtendedEventCardProps = React.ComponentProps<typeof Card> & {
    event: PadelEvent | undefined
    toggleEventOff: () => void
    // setSelectedEvent: React.Dispatch<
    //     React.SetStateAction<PadelEvent | undefined>
    // >
}

export function ExtendedEventCard({
    className,
    event,
    toggleEventOff,
}: ExtendedEventCardProps) {
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
                    <h1 className="text-xl font-bold">Doubles registered</h1>
                    <div className="grid pb-4 mb-4 grid-cols-4rt grid-cols last:mb-0 last:pb-0">
                        <div className="space-y-2">
                            {event?.categories.map((cat) => (
                                <>
                                    <p>{`Category: ${cat.level} - ${cat.type}`}</p>
                                    {cat.eventDoubles?.map((ed) => (
                                        <div className="flex items-center p-4 space-x-4 border rounded-md ">
                                            <div className="flex-1 space-y-1">
                                                {ed.double.players.map((p) => (
                                                    <>
                                                        <p className="pb-2">{`${p.firstName} ${p.lastName}`}</p>
                                                        <p className="text-sm">
                                                            {p.categoryId}{' '}
                                                        </p>
                                                    </>
                                                ))}
                                            </div>
                                        </div>
                                    ))}
                                </>
                            ))}
                        </div>
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
