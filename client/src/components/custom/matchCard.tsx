import { Match } from '@/types/padel.types'
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

type ErrorResponse = {
    message: string
}
type MatchCardProps = React.ComponentProps<typeof Card> & {
    match: Match
}
export const MatchCard = ({ match, className }: MatchCardProps) => {
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
            }

            const data = await axios.patch(
                `${import.meta.env.VITE_SERVER_URL}/matches/finish-match/${match.id}`,
                requestBody
            )

            console.log(data)
            sendResultToast(match, input)
            // setShowCard(false)
            await refetchMatchGames()

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
    return (
        <>
            {/* {showCard ? ( */}
            <Card className={cn('w-[380px]', className)}>
                <CardHeader>
                    <CardTitle>{`Match #${match.number}`}</CardTitle>
                    <CardDescription>
                        Category - {match.category?.level}{' '}
                        {match.category?.type}
                    </CardDescription>
                    {match.isFinished ? <p>🟢</p> : <p>🟡</p>}
                </CardHeader>

                <CardContent className="grid gap-2">
                    <div className="flex flex-col">
                        {match.isFinished &&
                        match.winner.id === match.doubles[0].id ? (
                            <div className="flex items-center p-4 space-x-4 bg-green-400 border rounded-md bg-opacity-20">
                                <div className="flex-1 space-y-1">
                                    <div className="flex flex-row justify-between">
                                        <div className="text-sm text-muted-foreground">
                                            {match.doubles[0].players?.map(
                                                (p, index) => (
                                                    <p
                                                        key={index}
                                                    >{`${p.firstName} ${p.lastName}`}</p>
                                                )
                                            )}
                                        </div>
                                        <div className="justify-end text-sm text-muted-foreground">
                                            {match.isFinished && matchGames ? (
                                                <p className="items-end align-end">
                                                    {matchGames.doublesOneGames}
                                                </p>
                                            ) : (
                                                <p className="items-end justify-end">
                                                    0
                                                </p>
                                            )}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        ) : (
                            <div className="flex items-center p-4 space-x-4 border rounded-md ">
                                <div className="flex-1 space-y-1">
                                    <div className="flex flex-row justify-between">
                                        <div className="text-sm text-muted-foreground">
                                            {match.doubles[0].players?.map(
                                                (p, index) => (
                                                    <p
                                                        key={index}
                                                    >{`${p.firstName} ${p.lastName}`}</p>
                                                )
                                            )}
                                        </div>
                                        <div className="justify-end text-sm text-muted-foreground">
                                            {match.isFinished && matchGames ? (
                                                <p className="items-end align-end">
                                                    {matchGames.doublesOneGames}
                                                </p>
                                            ) : (
                                                <p className="items-end justify-end">
                                                    0
                                                </p>
                                            )}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        )}

                        {match.isFinished &&
                        match.winner.id === match.doubles[1].id ? (
                            <div className="flex items-center p-4 space-x-4 bg-green-800 border rounded-md bg-opacity-30">
                                <div className="flex-1 space-y-1">
                                    <div className="flex flex-row justify-between">
                                        <div className="text-sm text-muted-foreground">
                                            {match.doubles[1].players?.map(
                                                (p, index) => (
                                                    <p
                                                        key={index}
                                                    >{`${p.firstName} ${p.lastName}`}</p>
                                                )
                                            )}
                                        </div>
                                        <div className="justify-end text-sm text-muted-foreground">
                                            {match.isFinished && matchGames ? (
                                                <p className="items-end align-end">
                                                    {matchGames.doublesTwoGames}
                                                </p>
                                            ) : (
                                                <p className="items-end justify-end">
                                                    0
                                                </p>
                                            )}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        ) : (
                            <div className="flex items-center p-4 space-x-4 border rounded-md ">
                                <div className="flex-1 space-y-1">
                                    <div className="flex flex-row justify-between">
                                        <div className="text-sm text-muted-foreground">
                                            {match.doubles[1].players?.map(
                                                (p, index) => (
                                                    <p
                                                        key={index}
                                                    >{`${p.firstName} ${p.lastName}`}</p>
                                                )
                                            )}
                                        </div>
                                        <div className="justify-end text-sm text-muted-foreground">
                                            {match.isFinished && matchGames ? (
                                                <p className="items-end align-end">
                                                    {matchGames.doublesTwoGames}
                                                </p>
                                            ) : (
                                                <p className="items-end justify-end">
                                                    0
                                                </p>
                                            )}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        )}
                    </div>
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

            {/* <Button onClick={handleReloadCard}>Reload Card</Button> */}
            {isError && (
                <div onClick={() => setError(false)} className="mt-4">
                    <ErrorAlert message={errorMessage} />
                </div>
            )}
        </>
    )
}

//     : (
//        <div className="flex items-center align-middle justify-evenly">
//            <h2>Match finished</h2>
//            {/* // todo align to center of div */}
//        </div>
//    )}
