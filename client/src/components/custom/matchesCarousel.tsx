import {
    Carousel,
    CarouselContent,
    CarouselItem,
    CarouselNext,
    CarouselPrevious,
} from '@/components/ui/carousel'
import { Match } from '@/types/padel.types'
import { MatchCard } from './matchCard'

type MatchesCarouselProps = {
    matches: Match[]
}
export function MatchesCarousel({ matches }: MatchesCarouselProps) {
    return (
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
    )
}
