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
import { Double, PadelEvent } from '@/types/padel.types'
import { useGetDoublesInEvent } from '@/hooks/useGetDoublesInEvent'
import axios from 'axios'
import { useState } from 'react'

type ExtendedEventCardProps = React.ComponentProps<typeof Card> & {
    event: PadelEvent
    toggleEventOff: () => void
}

type Match = {
    doublesOne: {
        doubleId: string
        double: Double
    }
    doublesTwo: {
        doubleId: string
        double: Double
    }
}

export function ExtendedEventCard({
    className,
    event,
    toggleEventOff,
    // categoriesWithDoublesInEvent,
}: ExtendedEventCardProps) {
    const { data: categoriesWithEventDoubles } = useGetDoublesInEvent(event.id)
    const [activate, setActivate] = useState<boolean>(false)
    const [matches, setMatches] = useState<Match[] | undefined>()
    // console.log(doublesInEvent)
    const handleActivate = async (eventId: string) => {
        try {
            const requestEventByIdDto = {
                id: eventId,
            }
            const { data: matches }: { data: Match[] } = await axios.post(
                'http://localhost:3000/events/activate-event',
                requestEventByIdDto
            )
            setActivate(true)
            console.log(matches)
            setMatches(matches)
            return matches
        } catch (error) {
            console.error(error)
            return error
        }
    }

    // console.log(eventById)
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
                    <div className="grid pb-4 mb-4 grid-cols-4rt grid-cols last:mb-0 last:pb-0"></div>
                </div>
                {categoriesWithEventDoubles && (
                    <div>
                        {Object.keys(categoriesWithEventDoubles).map(
                            (categoryId) => {
                                const { category, doubles } =
                                    categoriesWithEventDoubles[categoryId]
                                return (
                                    <div key={categoryId}>
                                        <p className="text-slate-700">{`[${category.level} ${category.type}]`}</p>
                                        {doubles.map((d, index) => (
                                            <div key={index}>
                                                <div className="flex items-center p-4 space-x-4 border rounded-md">
                                                    <div className="flex-1 space-y-1">
                                                        {d.players.map(
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
                                        ))}
                                    </div>
                                )
                            }
                        )}
                    </div>
                )}
            </CardContent>
            <CardFooter>
                <div className="flex flex-col items-center w-full space-x-5">
                    {activate && matches && (
                        <>
                            <div className="flex flex-col">
                                {matches.map((m) => (
                                    <>
                                        <div className="flex flex-row justify-between">
                                            <p>{m.doublesOne.doubleId}</p>

                                            <p> {m.doublesTwo.doubleId}</p>
                                        </div>
                                    </>
                                ))}
                            </div>
                        </>
                    )}
                    <div className="flex flex-row space-x-5">
                        <Button
                            onClick={() => toggleEventOff()}
                            className="w-full"
                        >
                            <Cross2Icon className="w-4 h-4" /> Close event
                        </Button>
                        <Button
                            onClick={() => handleActivate(event.id)}
                            className=" bg-slate-200"
                        >
                            Activate
                        </Button>
                    </div>
                </div>
            </CardFooter>
        </Card>
    )
}
