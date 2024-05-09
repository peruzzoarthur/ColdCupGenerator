import { Match, PadelEvent } from '@/types/padel.types'
import {
    Card,
    CardContent,
    CardDescription,
    // CardDescription,
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

type ErrorResponse = {
    message: string
}
type MatchCardProps = React.ComponentProps<typeof Card> & {
    match: Match
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
            // className: 'bg-emerald-600 bg-opacity-60 text-white',
        })
    }
    const [editOn, setEditOn] = useState<boolean>(false)

    const { matchGames, refetchMatchGames } = useGetMatchGames(
        match.id,
        match.isFinished
    )

    // const [showCard, setShowCard] = useState<boolean>(true)

    const onSubmit = async (input: matchFormObject) => {
        try {
            const requestBody = {
                doublesOneGames: input.doublesOneGames,
                doublesOneId: match.doubles[0].id,
                doublesTwoGames: input.doublesTwoGames,
                doublesTwoId: match.doubles[1].id,
                winnerDoublesId: input.winnerDoublesId,
                eventId: match.eventId,
            }

            const data = await axios.patch(
                `${import.meta.env.VITE_SERVER_URL}/matches/finish-match/${match.id}`,
                requestBody
            )

            sendResultToast(match, input)
            // setShowCard(false)
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
    if (match.matchDate) {
        const matchStartDate = new Date(match.matchDate.start)
        startTime = matchStartDate.toLocaleString()
    }

    return (
        <>
            <Card className={cn('w-[380px]', className)}>
                <CardHeader>
                    <CardTitle>{`Match #${match.number}`}</CardTitle>
                    <CardDescription>
                        Category - {match.category?.level}{' '}
                        {match.category?.type}
                    </CardDescription>
                    {match.isFinished ? <p>🟢</p> : <p>🟡</p>}
                    <CardDescription>{startTime}</CardDescription>
                </CardHeader>

                <CardContent>
                    <div className="flex flex-col">
                        <MatchResult match={match} matchGames={matchGames} />
                    </div>

                    {/* Footer */}
                    {match.isFinished ? null : (
                        <CardFooter className="justify-center">
                            <div className="w-2/3">
                                {editOn ? (
                                    <>
                                        <div className="flex flex-col justify-center mt-2">
                                            <MatchForm
                                                onSubmit={onSubmit}
                                                defaultValues={{
                                                    doublesOneGames: '',
                                                    doublesTwoGames: '',
                                                    winnerDoublesId: '',
                                                }}
                                                doublesPlaying={match.doubles}
                                            />
                                            <div className="flex justify-center mt-2">
                                                <Pencil1Icon
                                                    onClick={() => {
                                                        setEditOn(false)
                                                    }}
                                                    className="w-4 h-4 mr-2 hover:cursor-pointer"
                                                />
                                            </div>
                                        </div>
                                    </>
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
