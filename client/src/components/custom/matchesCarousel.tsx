import {
    Carousel,
    CarouselContent,
    CarouselItem,
    CarouselNext,
    CarouselPrevious,
} from '@/components/ui/carousel'
import { EventMatch, PadelEvent } from '@/types/padel.types'
import { MatchCard } from './matchCard'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'

type MatchesCarouselProps = {
    eventMatches: EventMatch[]

    refetchEventById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
}
export function MatchesCarousel({
    eventMatches,
    refetchEventById,
}: MatchesCarouselProps) {
    return (
        <Carousel className="w-[220px] sm:w-2/5 md:w-2/5">
            <CarouselContent>
                {eventMatches.map((eventMatch, index) => (
                    <CarouselItem key={index}>
                        <MatchCard
                            eventMatch={eventMatch}
                            key={index}
                            refetchEventById={refetchEventById}
                            className="sm:w-full"
                        />
                    </CarouselItem>
                ))}
            </CarouselContent>
            <CarouselPrevious />
            <CarouselNext />
        </Carousel>
    )
}
