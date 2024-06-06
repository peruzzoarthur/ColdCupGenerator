import { CheckCircledIcon } from '@radix-ui/react-icons'

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
import { Link } from '@tanstack/react-router'

type EventCardProps = React.ComponentProps<typeof Card> & {
    event: PadelEvent
    // toggleEventOn: (event: PadelEvent) => void
}

export function EventCard({ className, event }: EventCardProps) {
    return (
        <Card className={cn('w-[380px]', className)}>
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
                            {event.categories.map((event, index) => (
                                <p
                                    key={index}
                                >{`${event.level} - ${event.type}`}</p>
                            ))}
                        </div>
                    </div>
                </div>
                <div>
                    <div className="grid items-start pb-4 mb-4 last:mb-0 last:pb-0">
                        <div className="space-y-1">
                            <p className="font-medium leading-none text-md">
                                {event.name}
                            </p>
                            <p className="text-sm">Locations</p>

                            {event.places.map((p, index) => (
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
            </CardContent>
            <CardFooter>
                <Link
                    to={'/events/$id'}
                    params={{ id: event.id }}
                    className="w-full"
                >
                    <Button className="w-full">
                        <CheckCircledIcon className="w-4 h-4 mr-2" /> Open event
                    </Button>
                </Link>
            </CardFooter>
        </Card>
    )
}
