import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Category, Match, MatchDate } from '@/types/padel.types'
import { Card, CardDescription, CardHeader } from '../ui/card'
import { Button } from '../ui/button'
import { Cross2Icon } from '@radix-ui/react-icons'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { axiosInstance } from '@/axiosInstance'

type AvailableMatchesSelectProps = {
    matchDates: MatchDate[] | undefined
    categories: Category[] | undefined
    matches: Match[] | undefined
    matchDateIdState: string | undefined
    setMatchDateIdState: React.Dispatch<
        React.SetStateAction<string | undefined>
    >

    matchIdState: string | undefined
    setMatchIdState: React.Dispatch<React.SetStateAction<string | undefined>>
    setMatchAssignOn: React.Dispatch<React.SetStateAction<boolean>>
    refetchEventMatchDates: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<MatchDate[] | undefined, Error>>

    matchDateById: MatchDate | undefined
    isFetchingMatchDateById: boolean
    refetchMatchDateById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<MatchDate | undefined, Error>>
    matchById: Match | undefined
    isFetchingMatchById: boolean
    refetchMatchById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<Match | undefined, Error>>
}
export function AvailableMatchesSelectCard({
    matchDates,
    categories,
    matches,
    matchDateIdState,
    setMatchDateIdState,
    matchIdState,
    setMatchIdState,
    setMatchAssignOn,
    refetchEventMatchDates,
    matchDateById,
    isFetchingMatchDateById,
    refetchMatchDateById,
    refetchMatchById,
}: AvailableMatchesSelectProps) {
    const handleUpdateMatch = async (matchId: string, matchDateId: string) => {
        try {
            const activateEventDto = {
                matchDateId: matchDateId,
            }
            const { data: match }: { data: Match } = await axiosInstance.patch(
                `/matches/update-match-date/${matchId}`,
                activateEventDto
            )

            await refetchEventMatchDates()
            return match
        } catch (error) {
            return error
        }
    }

    const currentMatch = matchDateById?.match

    return (
        <>
            <Card className="w-[380px] p-2">
                <div className="flex justify-end">
                    <Cross2Icon
                        className="items-end cursor-pointer"
                        onClick={() => setMatchAssignOn(false)}
                    ></Cross2Icon>
                </div>
                {currentMatch && !isFetchingMatchDateById ? (
                    <CardHeader>
                        {' '}
                        {`Current match: Match #${currentMatch.number} - ${currentMatch.doubles[0].players[0].firstName} / ${currentMatch.doubles[0].players[1].firstName} x ${currentMatch.doubles[1].players[0].firstName} / ${currentMatch.doubles[1].players[1].firstName}`}{' '}
                    </CardHeader>
                ) : null}

                <CardDescription>
                    Select date:
                    <Select
                        onValueChange={(value) => {
                            setMatchDateIdState(value ?? undefined)
                        }}
                    >
                        <SelectTrigger className="items-center justify-center ">
                            {matchDateById ? (
                                <SelectValue
                                    placeholder={`
                                                    ${new Date(
                                                        matchDateById.start
                                                    ).toLocaleString()}
                                                    ${matchDateById.court.name}
                                                    `}
                                />
                            ) : (
                                <SelectValue
                                    placeholder={`Select match date`}
                                />
                            )}
                        </SelectTrigger>
                        {matchDates && (
                            <SelectContent>
                                {matchDates.map((md, index) => (
                                    <SelectGroup key={index}>
                                        <SelectItem
                                            className="items-start justify-start text-white bg-black text-start bg-opacity-70 hover:text-black"
                                            value={md.id as string}
                                        >
                                            {new Date(
                                                md.start
                                            ).toLocaleString()}{' '}
                                            {md.court.name}
                                        </SelectItem>
                                    </SelectGroup>
                                ))}
                            </SelectContent>
                        )}
                    </Select>
                </CardDescription>

                <CardDescription>
                    Select match
                    <Select
                        onValueChange={(value) => {
                            setMatchIdState(value)
                            refetchMatchDateById()
                        }}
                    >
                        <SelectTrigger className="items-center justify-center ">
                            {currentMatch ? (
                                <SelectValue
                                    placeholder={`Match #${currentMatch.number} ${currentMatch.doubles[0].players[0].firstName} / ${currentMatch.doubles[0].players[1].firstName} x ${currentMatch.doubles[1].players[0].firstName} / ${currentMatch.doubles[1].players[1].firstName}`}
                                />
                            ) : (
                                <SelectValue placeholder={`Select match`} />
                            )}
                        </SelectTrigger>

                        <SelectContent>
                            {categories?.map((c, index) => {
                                return (
                                    <SelectGroup key={index}>
                                        <SelectLabel>
                                            {c.level} {c.type}
                                        </SelectLabel>
                                        {matches
                                            ?.filter(
                                                (m) => m.categoryId === c.id
                                            )
                                            .map((m, index2) => (
                                                <div
                                                    className="flex flex-col"
                                                    key={index2}
                                                >
                                                    <SelectItem value={m.id}>
                                                        {`Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `}
                                                    </SelectItem>
                                                </div>
                                            ))}
                                    </SelectGroup>
                                )
                            })}
                        </SelectContent>
                    </Select>
                </CardDescription>
                <div className="flex justify-center mt-2">
                    {matchIdState && matchDateIdState && (
                        <Button
                            onClick={() => {
                                console.log(
                                    `Calling for matchDate: ${matchDateIdState} && match: ${matchIdState}`
                                )
                                handleUpdateMatch(
                                    matchIdState,
                                    matchDateIdState
                                )
                                refetchMatchDateById()
                                refetchMatchById()
                            }}
                        >
                            Update
                        </Button>
                    )}
                </div>
            </Card>
        </>
    )
}
