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
import { Card, CardDescription, CardTitle } from '../ui/card'
import { Button } from '../ui/button'
import { Cross2Icon } from '@radix-ui/react-icons'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { axiosInstance } from '@/axiosInstance'
import { useState } from 'react'

import { Label } from '../ui/label'
import { Separator } from '../ui/separator'
import { Checkbox } from '../ui/checkbox'
import { CheckedState } from '@radix-ui/react-checkbox'
import { Alert } from '../ui/alert'
import { Ellipsis } from 'lucide-react'

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
export function EditScheduleCard({
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
        useState<CheckedState>(false)

    const [showMatchesWithoutDate, setShowMatchesWithoutDate] =
        useState<CheckedState>(true)

    const [showDatesWithMatches, setShowDatesWithMatches] =
        useState<CheckedState>(false)

    const [showDatesWithoutMatches, setShowDatesWithoutMatches] =
        useState<CheckedState>(true)
    const [showFilters, setShowFilters] = useState<boolean>(false)

    const handleUpdateMatch = async (matchId: string, matchDateId: string) => {
        try {
            const activateEventDto = {
                matchDateId: matchDateId,
            }
            const { data: match }: { data: Match } = await axiosInstance.patch(
                `/matches/update-match-date/${matchId}`,
                activateEventDto
            )
            await refetchMatchById()
            await refetchEventById()
            await refetchMatchDateById()
            await refetchEventMatchDates()
            setMatchDateIdState('')
            return match
        } catch (error) {
            return error
        }
    }

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
            <Card className="w-[420px] p-4">
                <div className="flex justify-end">
                    <Button
                        variant="ghost"
                        onClick={() => setMatchAssignOn(false)}
                    >
                        <Cross2Icon className="items-end cursor-pointer" />
                    </Button>
                </div>
                <CardTitle className="pb-2">Edit matches and dates</CardTitle>

                {showFilters ? (
                    <>
                        <Separator />
                        <div className="flex justify-end">
                            <Button
                                variant="ghost"
                                onClick={() => setShowFilters(false)}
                            >
                                <Cross2Icon />
                            </Button>
                        </div>
                        <div className="flex flex-row items-center justify-center col-span-4 mb-4 space-x-6">
                            <div className="flex flex-col items-center justify-end space-y-1 text-sm">
                                <Label>Matches</Label>
                                <div className="flex space-x-0.5">
                                    <p>With date</p>
                                    <Checkbox
                                        checked={showMatchesWithDate}
                                        onCheckedChange={setShowMatchesWithDate}
                                    />
                                </div>
                                <div className="flex space-x-0.5">
                                    <p>Without date</p>
                                    <Checkbox
                                        checked={showMatchesWithoutDate}
                                        onCheckedChange={
                                            setShowMatchesWithoutDate
                                        }
                                    />
                                </div>
                            </div>

                            <div className="flex flex-col items-center justify-end space-y-1 text-sm">
                                <Label>Show dates</Label>
                                <div className="flex space-x-0.5">
                                    <p>With match</p>
                                    <Checkbox
                                        checked={showDatesWithMatches}
                                        onCheckedChange={
                                            setShowDatesWithMatches
                                        }
                                    />
                                </div>
                                <div className="flex space-x-0.5">
                                    <p> Without match</p>
                                    <Checkbox
                                        checked={showDatesWithoutMatches}
                                        onCheckedChange={
                                            setShowDatesWithoutMatches
                                        }
                                    />
                                </div>
                            </div>
                        </div>

                        <Separator className="mt-2 mb-2" />
                    </>
                ) : (
                    <div className="flex justify-center">
                        <Button
                            variant="ghost"
                            onClick={() => setShowFilters(true)}
                        >
                            <Ellipsis />
                        </Button>
                    </div>
                )}
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
                            {matchDateById && matchDateById.match ? (
                                <SelectValue
                                    placeholder={`Match #${matchDateById.match.eventMatch?.number} ${matchDateById.match.doubles[0].players[0].firstName} / ${matchDateById.match.doubles[0].players[1].firstName} x ${matchDateById.match.doubles[1].players[0].firstName} / ${matchDateById.match.doubles[1].players[1].firstName}`}
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
                    <Button
                        onClick={async () => {
                            handleUpdateMatch(
                                matchIdState ?? '',
                                matchDateIdState ?? ''
                            )
                        }}
                    >
                        Update
                    </Button>
                </div>
                {isFetchingMatchDateById ? (
                    <p>loading...</p>
                ) : matchDateById && matchDateById.match ? (
                    <Alert className="mt-2" variant="destructive">
                        {`Match #${matchDateById.match.eventMatch?.number} - ${matchDateById.match.doubles[0].players[0].firstName} / ${matchDateById.match.doubles[0].players[1].firstName} x ${matchDateById.match.doubles[1].players[0].firstName} / ${matchDateById.match.doubles[1].players[1].firstName} is already assigned to this date.`}
                    </Alert>
                ) : null}
            </Card>
        </>
    )
}
