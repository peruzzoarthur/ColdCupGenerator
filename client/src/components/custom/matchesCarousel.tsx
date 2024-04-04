import {
    Carousel,
    CarouselContent,
    CarouselItem,
    CarouselNext,
    CarouselPrevious,
} from '@/components/ui/carousel'
import { Match, PadelEvent } from '@/types/padel.types'
import { MatchCard } from './matchCard'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { Button } from '../ui/button'
import { useGetEvents } from '@/hooks/useGetEvents'

type MatchesCarouselProps = {
    matches: Match[]
    refetchEvents: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent[] | undefined, Error>>
    setMatches: React.Dispatch<React.SetStateAction<Match[]>>
    eventId: string
}
export function MatchesCarousel({
    matches,
    // refetchEvents,
    setMatches,
    eventId,
}: MatchesCarouselProps) {
    const { allEvents, refetchEvents } = useGetEvents()

    // todo... this function needs to be called twice in order to reset the components...

    const handleRefresh = async () => {
        try {
            await refetchEvents()
            const theEvent = allEvents?.find((event) => event.id === eventId)
            if (theEvent?.matches) {
                setMatches(theEvent.matches)
            }
        } catch (error) {
            console.error(error)
        }
    }

    return (
        <>
            <Carousel className="w-full max-w-[420px]">
                <CarouselContent>
                    {matches.map((match, index) => (
                        <CarouselItem key={index}>
                            <div className="p-1">
                                <MatchCard match={match} key={index} />
                            </div>
                        </CarouselItem>
                    ))}
                </CarouselContent>
                <CarouselPrevious />
                <CarouselNext />
            </Carousel>
            <Button onClick={handleRefresh}>Refresh</Button>
        </>
    )
}
