import { EventMatch, PadelEvent } from '@/types/padel.types'
import { MatchCard } from './matchCard'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'

type MatchesGridProps = {
    matches: EventMatch[] | undefined
    refetchEventById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
    // setToggleMatchesGrid: (value: React.SetStateAction<boolean>) => void
}

export const MatchesGrid = ({
    matches,
    refetchEventById,
    // setToggleMatchesGrid,
}: MatchesGridProps) => {
    return (
        <>
            <div className="grid items-center grid-cols-1 gap-16 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4">
                {matches?.map((match, index) => (
                    <MatchCard
                        key={index}
                        match={match.match}
                        refetchEventById={refetchEventById}
                    />
                ))}
            </div>
        </>
    )
}
