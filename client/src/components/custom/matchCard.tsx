import { EventMatch, Match, PadelEvent } from '@/types/padel.types'
import {
    Card,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { cn } from '@/lib/utils'
import { MatchForm, matchFormObject } from './matchForm'
import axios, { AxiosError } from 'axios'
import { useGetMatchGames } from '@/hooks/useGetMatchGames'
import { useState } from 'react'
import { Pencil1Icon } from '@radix-ui/react-icons'
import { useToast } from '../ui/use-toast'
import { ErrorAlert } from './errorAlert'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { MatchResult } from './matchCard/styledMatchResult'
import { axiosInstance } from '@/axiosInstance'

type ErrorResponse = {
    message: string
}
type MatchCardProps = React.ComponentProps<typeof Card> & {
    match: EventMatch
    refetchEventById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
}
export const MatchCard = ({
    match,
    className,
    refetchEventById,
}: MatchCardProps) => {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()

    const { toast } = useToast()

    const sendResultToast = (match: Match, form: matchFormObject) => {
        toast({
            title: 'Success! 🙌',
            description: `Sent result:\n
            ${match.doubles[0].players[0].firstName} ${match.doubles[0].players[0].lastName} / ${match.doubles[0].players[1].firstName} ${match.doubles[0].players[1].lastName}: ${form.doublesOneGames} ---
            ${match.doubles[1].players[0].firstName} ${match.doubles[1].players[0].lastName} / ${match.doubles[1].players[1].firstName} ${match.doubles[1].players[1].lastName}: ${form.doublesTwoGames}`,
        })
    }
    const [editOn, setEditOn] = useState<boolean>(false)

    const { matchGames, refetchMatchGames } = useGetMatchGames(
        match.match.id,
        match.match.isFinished
    )

    const onSubmit = async (input: matchFormObject) => {
        try {
            const requestBody = {
                doublesOneGames: input.doublesOneGames,
                doublesOneId: match.match.doubles[0].id,
                doublesTwoGames: input.doublesTwoGames,
                doublesTwoId: match.match.doubles[1].id,
                winnerDoublesId: input.winnerDoublesId,
                eventId: match.eventId,
            }

            const data = await axiosInstance.patch(
                `/matches/finish-match/${match.id}`,
                requestBody
            )

            sendResultToast(match.match, input)
            await refetchMatchGames()
            await refetchEventById()

            return data
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (
                    axiosError.response &&
                    (axiosError.response.status === 400 || 404)
                ) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                } else {
                    setError(true)
                    setErrorMessage('Error setting match result')
                }
            } else {
                setError(true)
                setErrorMessage('Error setting match result')
            }
        }
    }

    let startTime = undefined
    if (match.match.matchDate) {
        const matchStartDate = new Date(match.match.matchDate.start)
        startTime = matchStartDate.toLocaleString()
    }

    return (
        <>
            <Card className={cn('w-[380px] min-h-[354px]', className)}>
                <CardHeader>
                    <CardTitle>{`Match #${match.number}`}</CardTitle>
                    <CardDescription>
                        Category - {match.match.category?.level}{' '}
                        {match.match.category?.type}
                    </CardDescription>
                    {match.match.isFinished ? <p>🟢</p> : <p>🟡</p>}
                    <CardDescription>{startTime}</CardDescription>
                </CardHeader>
                <CardContent>
                    {editOn ? (
                        <div className="flex flex-col">
                            <MatchForm
                                onSubmit={onSubmit}
                                defaultValues={{
                                    doublesOneGames: '',
                                    doublesTwoGames: '',
                                    winnerDoublesId: '',
                                }}
                                doublesPlaying={match.match.doubles}
                            />
                        </div>
                    ) : (
                        <div className="flex flex-col">
                            <MatchResult
                                match={match}
                                matchGames={matchGames}
                            />
                        </div>
                    )}
                    {/* Footer (Pencil icon to to toggle on and off editMode) */}
                    {match.match.isFinished ? null : (
                        <CardFooter className="justify-center">
                            <div className="w-2/3">
                                {editOn ? (
                                    <div className="flex justify-center mt-2">
                                        <Pencil1Icon
                                            onClick={() => {
                                                setEditOn(false)
                                            }}
                                            className="w-4 h-4 mr-2 hover:cursor-pointer"
                                        />
                                    </div>
                                ) : (
                                    <div className="flex justify-center mt-2">
                                        <Pencil1Icon
                                            onClick={() => {
                                                setEditOn(true)
                                            }}
                                            className="justify-end w-4 h-4 mr-2 hover:cursor-pointer"
                                        />
                                    </div>
                                )}
                            </div>
                        </CardFooter>
                    )}
                </CardContent>
            </Card>

            {isError && (
                <div onClick={() => setError(false)} className="mt-4">
                    <ErrorAlert message={errorMessage} />
                </div>
            )}
        </>
    )
}
