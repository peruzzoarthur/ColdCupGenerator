import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import {
    Category,
    EventMatch,
    Match,
    MatchDate,
    PadelEvent,
} from '@/types/padel.types'
import { Card, CardDescription, CardHeader } from '../ui/card'
import { Button } from '../ui/button'
import { Cross2Icon } from '@radix-ui/react-icons'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { axiosInstance } from '@/axiosInstance'
import { useState } from 'react'
import {
    DropdownMenu,
    DropdownMenuCheckboxItem,
    DropdownMenuContent,
    DropdownMenuLabel,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { ListFilter } from 'lucide-react'

type AvailableMatchesSelectProps = {
    matchDates: MatchDate[] | undefined
    categories: Category[] | undefined
    eventMatches: EventMatch[] | undefined
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
    refetchEventById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent | undefined, Error>>
}
export function AvailableMatchesSelectCard({
    matchDates,
    categories,
    eventMatches,
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
    refetchEventById,
}: AvailableMatchesSelectProps) {
    const [showMatchesWithDate, setShowMatchesWithDate] =
        useState<boolean>(false)

    const [showMatchesWithoutDate, setShowMatchesWithoutDate] =
        useState<boolean>(true)

    const [showDatesWithMatches, setShowDatesWithMatches] =
        useState<boolean>(false)

    const [showDatesWithoutMatches, setShowDatesWithoutMatches] =
        useState<boolean>(true)

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

    if (showMatchesWithDate && !showMatchesWithoutDate) {
        eventMatches = eventMatches?.filter((m) => m.match.matchDate !== null)
    }

    if (showMatchesWithoutDate && !showMatchesWithDate) {
        eventMatches = eventMatches?.filter((m) => m.match.matchDate === null)
    }

    if (showDatesWithMatches && !showDatesWithoutMatches) {
        matchDates = matchDates?.filter((md) => md.match !== null)
    }

    if (showDatesWithoutMatches && !showDatesWithMatches) {
        matchDates = matchDates?.filter((md) => md.match === null)
    }

    return (
        <>
            <Card className="w-[380px] p-2">
                <div className="flex justify-end">
                    <Cross2Icon
                        className="items-end cursor-pointer"
                        onClick={() => setMatchAssignOn(false)}
                    ></Cross2Icon>
                </div>
                <div className="flex items-center justify-end gap-2 mt-2 ml-auto">
                    <DropdownMenu>
                        <DropdownMenuTrigger asChild>
                            <Button
                                variant="outline"
                                size="sm"
                                className="gap-1 text-sm h-7"
                            >
                                <ListFilter className="h-3.5 w-3.5" />
                                <span className="sr-only sm:not-sr-only">
                                    Filter
                                </span>
                            </Button>
                        </DropdownMenuTrigger>
                        <DropdownMenuContent align="end">
                            <DropdownMenuLabel>Show matches</DropdownMenuLabel>
                            <DropdownMenuSeparator />
                            <DropdownMenuCheckboxItem
                                checked={showMatchesWithDate}
                                onCheckedChange={setShowMatchesWithDate}
                            >
                                With date
                            </DropdownMenuCheckboxItem>
                            <DropdownMenuCheckboxItem
                                checked={showMatchesWithoutDate}
                                onCheckedChange={setShowMatchesWithoutDate}
                            >
                                Without date
                            </DropdownMenuCheckboxItem>

                            <DropdownMenuLabel>Show dates</DropdownMenuLabel>
                            <DropdownMenuSeparator />
                            <DropdownMenuCheckboxItem
                                checked={showDatesWithMatches}
                                onCheckedChange={setShowDatesWithMatches}
                            >
                                With match
                            </DropdownMenuCheckboxItem>
                            <DropdownMenuCheckboxItem
                                checked={showDatesWithoutMatches}
                                onCheckedChange={setShowDatesWithoutMatches}
                            >
                                Without match
                            </DropdownMenuCheckboxItem>
                        </DropdownMenuContent>
                    </DropdownMenu>
                </div>
                {currentMatch && !isFetchingMatchDateById ? (
                    <CardHeader>
                        {`Current match: Match #${currentMatch.eventMatch?.number} - ${currentMatch.doubles[0].players[0].firstName} / ${currentMatch.doubles[0].players[1].firstName} x ${currentMatch.doubles[1].players[0].firstName} / ${currentMatch.doubles[1].players[1].firstName}`}{' '}
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
                                    placeholder={`Match #${currentMatch.eventMatch?.number} ${currentMatch.doubles[0].players[0].firstName} / ${currentMatch.doubles[0].players[1].firstName} x ${currentMatch.doubles[1].players[0].firstName} / ${currentMatch.doubles[1].players[1].firstName}`}
                                />
                            ) : (
                                <SelectValue placeholder={`Select match`} />
                            )}

                            <SelectContent>
                                {categories?.map((c, index) => {
                                    return (
                                        <SelectGroup key={index}>
                                            <SelectLabel>
                                                {c.level} {c.type}
                                            </SelectLabel>
                                            {eventMatches
                                                ?.filter(
                                                    (m) =>
                                                        m.match.category.id ===
                                                        c.id
                                                )
                                                .map((m, index2) => (
                                                    <SelectItem
                                                        value={m.match.id}
                                                        key={index2}
                                                    >
                                                        {`Match #${m.number} ${m.match.doubles[0].players[0].firstName} / ${m.match.doubles[0].players[1].firstName} x ${m.match.doubles[1].players[0].firstName} / ${m.match.doubles[1].players[1].firstName} `}
                                                    </SelectItem>
                                                ))}
                                        </SelectGroup>
                                    )
                                })}
                            </SelectContent>
                        </SelectTrigger>
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
                                refetchEventById()
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
