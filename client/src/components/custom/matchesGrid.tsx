import { Match, PadelEvent } from '@/types/padel.types'
import React from 'react'
import { MatchCard } from './matchCard'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { Button } from '../ui/button'

type MatchesGridProps = {
    matches: Match[] | undefined
    refetchEventById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
    setToggleMatchesGrid: (value: React.SetStateAction<boolean>) => void
}

export const MatchesGrid = ({
    matches,
    refetchEventById,
    setToggleMatchesGrid,
}: MatchesGridProps) => {
    return (
        <>
            <Button className="" onClick={() => setToggleMatchesGrid(false)}>
                Back
            </Button>

            <div className="grid grid-cols-1 gap-32 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
                {matches?.map((match, index) => (
                    <MatchCard
                        key={index}
                        match={match}
                        refetchEventById={refetchEventById}
                    />
                ))}
            </div>
        </>
    )
}
