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
        <>
            <Carousel className="max-w-[420px]">
                <CarouselContent>
                    {eventMatches.map((eventMatch, index) => (
                        <CarouselItem key={index}>
                            <div className="p-1">
                                <MatchCard
                                    eventMatch={eventMatch}
                                    key={index}
                                    refetchEventById={refetchEventById}
                                />
                            </div>
                        </CarouselItem>
                    ))}
                </CarouselContent>
                <CarouselPrevious />
                <CarouselNext />
            </Carousel>
            {/* <Button onClick={handleRefresh}>Refresh</Button> */}
        </>
    )
}
