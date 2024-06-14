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
            <div className="grid items-center grid-cols-1 gap-16 sm:grid-cols-1 md:grid-cols-1 lg:grid-cols-1 xl:grid-cols-2 2xl:grid-cols-3">
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
