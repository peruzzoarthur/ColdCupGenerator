import {
    Carousel,
    CarouselContent,
    CarouselItem,
    CarouselNext,
    CarouselPrevious,
} from '@/components/ui/carousel'
import { Category, MatchDate } from '@/types/padel.types'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { AvailableMatchesSelectCard } from './availableMatchesSelectCard'

type AvailableMatchesCarouselProps = {
    matchDates: MatchDate[] | undefined
    categories: Category[] | undefined
    matchDateIdState: string | undefined
    matchIdState: string | undefined
    setMatchIdState: React.Dispatch<React.SetStateAction<string | undefined>>
    setMatchAssignOn: React.Dispatch<React.SetStateAction<boolean>>
    refetchEventMatchDates: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<MatchDate[] | undefined, Error>>
}
export function AvailableMatchesCarousel({
    matchDates,
    categories,
    matchDateIdState,
    matchIdState,
    setMatchIdState,
    setMatchAssignOn,
    refetchEventMatchDates,
}: AvailableMatchesCarouselProps) {
    return (
        <>
            <Carousel className="max-w-[420px]">
                <CarouselContent>
                    {matchDates?.map((matchDate, index) => (
                        <CarouselItem
                            onSelect={() => console.log('im selected')}
                            key={index}
                        >
                            <div className="p-1">
                                <AvailableMatchesSelectCard
                                    categories={categories}
                                    matchDate={matchDate}
                                    matchDateIdState={matchDateIdState}
                                    matchIdState={matchIdState}
                                    setMatchIdState={setMatchIdState}
                                    setMatchAssignOn={setMatchAssignOn}
                                    refetchEventMatchDates={
                                        refetchEventMatchDates
                                    }
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
