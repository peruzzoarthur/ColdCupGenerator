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
import axios from 'axios'
import { useGetMatchGames } from '@/hooks/useGetMatchGames'
import { useState } from 'react'
import { Pencil1Icon } from '@radix-ui/react-icons'

type MatchCardProps = React.ComponentProps<typeof Card> & {
    match: Match
    matchIndex: number
}
export const MatchCard = ({ match, matchIndex, className }: MatchCardProps) => {
    // todo add toaster and refetch?
    // todo add real number to matches - back-end @unique(autoincrement()) i guess

    const [editOn, setEditOn] = useState<boolean>(false)
    const { matchGames } = useGetMatchGames(match.id)
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
            return data
        } catch (error) {
            console.error(error)
            return error
        }
    }
    return (
        <>
            <Card className={cn('w-[380px]', className)}>
                <CardHeader>
                    <CardTitle>{`Match ${matchIndex + 1}`}</CardTitle>
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
        </>
    )
}
