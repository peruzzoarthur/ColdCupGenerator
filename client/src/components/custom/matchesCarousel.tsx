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

type MatchesCarouselProps = {
    matches: Match[]

    refetchEventById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
}
export function MatchesCarousel({
    matches,
    refetchEventById,
}: MatchesCarouselProps) {
    return (
        <>
            <Carousel className="max-w-[420px]">
                <CarouselContent>
                    {matches.map((match, index) => (
                        <CarouselItem key={index}>
                            <div className="p-1">
                                <MatchCard
                                    match={match}
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
