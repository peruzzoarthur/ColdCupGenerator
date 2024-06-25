import {
    Category,
    ErrorResponse,
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
import { Alert } from '../ui/alert'
import { ArrowLeftCircle, ArrowRightCircle, Ellipsis } from 'lucide-react'
import { ScheduleTableProps } from './scheduleTable/columns'
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuRadioGroup,
    DropdownMenuRadioItem,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { ScrollArea } from '../ui/scroll-area'
import { useGetMatchById } from '@/hooks/useGetMatchById'
import { Switch } from '../ui/switch'
import { ErrorAlert } from './errorAlert'
import axios, { AxiosError } from 'axios'

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
    tableData: ScheduleTableProps[]
}
export function EditScheduleCard({
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
    tableData,
}: AvailableMatchesSelectProps) {
    const [showOnlyMatchesWithoutDate, setShowOnlyMatchesWithoutDate] =
        useState<boolean>(true)
    const [showFilters, setShowFilters] = useState<boolean>(false)
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()

    const { matchById } = useGetMatchById(matchIdState)

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
            return match
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
            } else {
                setError(true)
                setErrorMessage('Error updating match/date.')
            }
        }
    }

    const handleRemoveMatch = async (matchDateId: string) => {
        try {
            const { data: match }: { data: Match } = await axiosInstance.delete(
                `/match-dates/remove-match/${matchDateId}`
            )
            await refetchMatchById()
            await refetchEventById()
            await refetchMatchDateById()
            await refetchEventMatchDates()
            return match
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
            } else {
                setError(true)
                setErrorMessage('Error removing match from date.')
            }
        }
    }

    const changeCardMatchdate = async (
        prevOrNext: string,
        data: ScheduleTableProps[],
        matchDateId?: string
    ) => {
        try {
            if (matchDateId) {
                const id = data.findIndex((d) => d.matchDateId === matchDateId)
                if (prevOrNext === 'prev') {
                    const d = data[id - 1]
                    if (d === undefined) {
                        return
                    }
                    setMatchDateIdState(d.matchDateId ?? matchDateId)
                }
                if (prevOrNext === 'next') {
                    const d = data[id + 1]
                    if (d === undefined) {
                        return
                    }
                    setMatchDateIdState(d.matchDateId ?? matchDateId)
                }
            }
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
            } else {
                setError(true)
                setErrorMessage("Sorry, can't move")
            }
        }
    }

    if (showOnlyMatchesWithoutDate) {
        eventMatches = eventMatches?.filter((m) => m.match.matchDate === null)
    }

    return (
        <div className="flex items-center justify-center w-full mt-2 mb-2 ">
            <Button
                onClick={async () =>
                    changeCardMatchdate('prev', tableData, matchDateIdState)
                }
                variant="ghost"
                className="mr-2"
            >
                <ArrowLeftCircle />
            </Button>
            <Card className="w-[240px] sm:w-2/3 p-2">
                <div className="flex justify-end">
                    <Button
                        variant="ghost"
                        onClick={() => setMatchAssignOn(false)}
                    >
                        <Cross2Icon className="items-end cursor-pointer" />
                    </Button>
                </div>

                <CardTitle className="pb-2">Edit matches and dates</CardTitle>

                <div className="flex flex-col justify-center w-full">
                    <CardDescription>Date</CardDescription>
                    <DropdownMenu>
                        <DropdownMenuTrigger asChild>
                            <Button variant="outline">
                                {matchDateById
                                    ? `
                                                    ${new Date(
                                                        matchDateById.start
                                                    ).toLocaleString()}
                                                    ${matchDateById.court.name}
                                                    `
                                    : 'Select date'}
                            </Button>
                        </DropdownMenuTrigger>
                        <DropdownMenuContent className="w-56">
                            <ScrollArea className="w-11/12 rounded-md h-72">
                                <DropdownMenuRadioGroup
                                    value={matchDateIdState}
                                    onValueChange={setMatchDateIdState}
                                >
                                    {tableData.map(
                                        (td, index) =>
                                            td.matchDateId && (
                                                <DropdownMenuRadioItem
                                                    value={td.matchDateId}
                                                    key={index}
                                                >
                                                    {td.start} {td.court}
                                                </DropdownMenuRadioItem>
                                            )
                                    )}
                                </DropdownMenuRadioGroup>
                            </ScrollArea>
                        </DropdownMenuContent>
                    </DropdownMenu>
                </div>

                <div className="flex flex-col justify-center w-full">
                    <CardDescription>Select match</CardDescription>
                    <DropdownMenu>
                        <DropdownMenuTrigger asChild>
                            <Button
                                variant="outline"
                                className="overflow-hidden truncate"
                            >
                                {matchById && matchById
                                    ? `Match #${matchById.eventMatch?.number} ${matchById.doubles[0].players[0].firstName} / ${matchById.doubles[0].players[1].firstName} x ${matchById.doubles[1].players[0].firstName} / ${matchById.doubles[1].players[1].firstName}`
                                    : 'Select match'}
                            </Button>
                        </DropdownMenuTrigger>
                        <DropdownMenuContent className="w-56">
                            <ScrollArea className="w-11/12 rounded-md h-72">
                                <DropdownMenuRadioGroup
                                    value={matchIdState}
                                    onValueChange={(value) => {
                                        setMatchIdState(value)
                                        refetchMatchDateById()
                                    }}
                                >
                                    {categories?.map((c, index) => {
                                        return (
                                            <div key={index}>
                                                <Label>
                                                    {c.level} {c.type}
                                                </Label>
                                                <DropdownMenuSeparator />
                                                {eventMatches
                                                    ?.filter(
                                                        (m) =>
                                                            m.match.category
                                                                .id === c.id
                                                    )
                                                    .map((m, index2) => (
                                                        <DropdownMenuRadioItem
                                                            value={m.match.id}
                                                            key={index2}
                                                        >
                                                            {`Match #${m.number} ${m.match.doubles[0].players[0].firstName} / ${m.match.doubles[0].players[1].firstName} x ${m.match.doubles[1].players[0].firstName} / ${m.match.doubles[1].players[1].firstName} `}
                                                        </DropdownMenuRadioItem>
                                                    ))}
                                            </div>
                                        )
                                    })}
                                </DropdownMenuRadioGroup>
                            </ScrollArea>
                        </DropdownMenuContent>
                    </DropdownMenu>
                </div>

                <div className="flex justify-center mt-2 space-x-2">
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
                    <Button
                        onClick={async () => {
                            handleRemoveMatch(matchDateIdState ?? '')
                        }}
                        variant="destructive"
                    >
                        Remove
                    </Button>
                </div>
                {isFetchingMatchDateById ? null : matchDateById &&
                  matchDateById.match ? (
                    <Alert className="mt-2" variant="default">
                        {`Match #${matchDateById.match.eventMatch?.number} - ${matchDateById.match.doubles[0].players[0].firstName} / ${matchDateById.match.doubles[0].players[1].firstName} x ${matchDateById.match.doubles[1].players[0].firstName} / ${matchDateById.match.doubles[1].players[1].firstName} is already assigned to this date.`}
                    </Alert>
                ) : null}

                {showFilters ? (
                    <>
                        <div className="flex flex-col items-center w-11/12 space-y-1 text-sm">
                            <div className="ml-auto">
                                <Button
                                    variant="ghost"
                                    onClick={() => setShowFilters(false)}
                                >
                                    <Cross2Icon />
                                </Button>
                            </div>
                            <div>
                                <Label className="p-4">
                                    Allow only empty matches for input
                                </Label>
                                <Switch
                                    checked={showOnlyMatchesWithoutDate}
                                    onCheckedChange={
                                        setShowOnlyMatchesWithoutDate
                                    }
                                />
                            </div>
                        </div>
                    </>
                ) : (
                    <div className="flex justify-center mt-2">
                        <Button
                            variant="ghost"
                            onClick={() => setShowFilters(true)}
                        >
                            <Ellipsis />
                        </Button>
                    </div>
                )}
                {isError && (
                    <div onClick={() => setError(false)} className="mt-4">
                        <ErrorAlert message={errorMessage} />
                    </div>
                )}
            </Card>

            <Button
                onClick={async () =>
                    changeCardMatchdate('next', tableData, matchDateIdState)
                }
                variant="ghost"
                className="ml-2"
            >
                <ArrowRightCircle />
            </Button>
        </div>
    )
}
