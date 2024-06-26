import { EventMatch, PadelEvent } from '@/types/padel.types'
import { MatchCard } from './matchCard'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'

type MatchesGridProps = {
    eventMatches: EventMatch[] | undefined
    refetchEventById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
}

export const MatchesGrid = ({
    eventMatches,
    refetchEventById,
}: MatchesGridProps) => {
    return (
        <>
            <div className="grid items-center w-full grid-cols-1 gap-16 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-3 2xl:grid-cols-4">
                {eventMatches?.map((eventMatch, index) => (
                    <MatchCard
                        key={index}
                        eventMatch={eventMatch}
                        refetchEventById={refetchEventById}
                    />
                ))}
            </div>
        </>
    )
}
