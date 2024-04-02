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

type MatchCardProps = React.ComponentProps<typeof Card> & {
    match: Match
}
export const MatchCard = ({ match, className }: MatchCardProps) => {
    return (
        <>
            <Card className={cn('w-[380px]', className)}>
                <CardHeader>
                    <CardTitle>Match</CardTitle>
                    <CardDescription>
                        Category - {match.category?.level}{' '}
                        {match.category?.type}
                    </CardDescription>
                    {match.isFinished ? <p>✅</p> : <p>🟢</p>}
                </CardHeader>
                <CardContent className="grid gap-2">
                    <div className="flex items-center p-4 space-x-4 border rounded-md ">
                        <div className="flex-1 space-y-1">
                            <div className="text-sm text-muted-foreground">
                                {match.doubles[0].players?.map((p, index) => (
                                    <p
                                        key={index}
                                    >{`${p.firstName} ${p.lastName}`}</p>
                                ))}
                            </div>
                        </div>
                    </div>
                    <div className="flex items-center p-4 space-x-4 border rounded-md ">
                        <div className="flex-1 space-y-1">
                            <div className="text-sm text-muted-foreground">
                                {match.doubles[1].players?.map((p, index) => (
                                    <p
                                        key={index}
                                    >{`${p.firstName} ${p.lastName}`}</p>
                                ))}
                            </div>
                        </div>
                    </div>
                    {match.isFinished ? (
                        <div>
                            {match.sets.map((set, index) => (
                                <>
                                    <p>{`Set ${index + 1} - ${set.type}`}</p>
                                    <p>{match.sets[0].result}</p>
                                    <p>{match.winner.id}</p>
                                </>
                            ))}
                        </div>
                    ) : null}
                    {/* <div>
                        {match.sets.map((set, index) => (
                            <>
                                <p>{`Set ${index + 1} - ${set.type}`}</p>
                                <p>{match.sets[0].result}</p>
                            </>
                        ))}
                    </div> */}
                </CardContent>
                <CardFooter className="justify-end">
                    {/* <Pencil1Icon
                                    onClick={() => {
                                        setEditOn(true)
                                    }}
                                    className="justify-end w-4 h-4 mr-2 hover:cursor-pointer"
                                /> */}
                </CardFooter>
            </Card>
        </>
    )
}
