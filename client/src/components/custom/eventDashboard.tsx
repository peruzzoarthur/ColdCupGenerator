import { File, ListFilter, Grid3X3, Square, Calendar } from 'lucide-react'

import {
    Breadcrumb,
    BreadcrumbItem,
    BreadcrumbLink,
    BreadcrumbList,
    BreadcrumbPage,
    BreadcrumbSeparator,
} from '@/components/ui/breadcrumb'
import { Button } from '@/components/ui/button'
import {
    Card,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuLabel,
    DropdownMenuRadioGroup,
    DropdownMenuRadioItem,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'

import { Tabs, TabsContent } from '@/components/ui/tabs'
import {
    ErrorResponse,
    EventType,
    Match,
    PadelEvent,
} from '@/types/padel.types'
// import { useGetDoublesInEvent } from '@/hooks/useGetDoublesInEvent'
import { EventDoublesTable } from './eventsTable/eventDoublesTable'
import { RegisteredDoublesTable, doublesColumns } from './eventsTable/columns'
import { MatchesCarousel } from './matchesCarousel'
import { useGetEventById } from '@/hooks/useGetEventById'
import { useState } from 'react'
import {
    MatchDatesTableProps,
    matchDateColumns,
} from './matchDatesTable/columns'
import { MatchDatesTable } from './matchDatesTable/matchDatesTable'
import { getUniqueValuesForDays } from '@/util/getUniqueValuesForDays'
import { CoolButton } from './coolButton'
import { useGetEventMatchesInfoById } from '@/hooks/useGetEventMatchesInfoById'
import { EventInfoCard } from './eventInfoCard'
import { Alert } from '../ui/alert'
import { useGetEventMatchDates } from '@/hooks/useGetEventMatchDates'
import { useGetMatchDateById } from '@/hooks/useGetMatchDateById'
import { downloadRegisteredDoublesToExcel } from '@/lib/xlsx'
import { useGetMatchById } from '@/hooks/useGetMatchById'
import { MatchesGrid } from './matchesGrid'
import UpdateEventForm from './updateEventForm'
import { axiosInstance } from '@/axiosInstance'
import axios, { AxiosError } from 'axios'
import { ErrorAlert } from './errorAlert'
import { Link } from '@tanstack/react-router'
import { useGetRole } from '@/hooks/useGetRole'
import { useGetEventRequestsById } from '@/hooks/useGetEventRequests'
import { EventRequestsCard } from './eventRequestsCard'

type EventDashBoardProps = {
    event: PadelEvent
}

export function EventDashboard({ event }: EventDashBoardProps) {
    const [isEditEventOn, setIsEditEventOn] = useState<boolean>(false)

    const [isAutoPopulateOn, setIsAutoPopulateOn] = useState<boolean>(false)
    const [toggleMatchesGrid, setToggleMatchesGrid] = useState<boolean>(false)
    const [catFilter, setCatFilter] = useState<string>('all')
    const [dayFilter, setDayFilter] = useState('all')
    const [doublesFilter, setDoublesFilter] = useState<string>('all')
    const [courtFilter, setCourtFilter] = useState<string>('all')
    const [categoryFilter, setCategoryFilter] = useState<string>('all')
    const [hasMatchFilter, setHasMatchFilter] = useState<boolean>(false)
    const [matchDateIdState, setMatchDateIdState] = useState<
        string | undefined
    >()
    const [matchIdState, setMatchIdState] = useState<string | undefined>()
    const [matchAssignOn, setMatchAssignOn] = useState<boolean>(false)

    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const {
        finishedMatches,
        pendingMatches,
        refetchEventById,
        eventById,
        isFetchingEventById,
    } = useGetEventById(event.id)

    console.log(pendingMatches)

    const { role } = useGetRole()

    const { eventMatchDates, refetchEventMatchDates } = useGetEventMatchDates(
        event.id
    )
    const { eventMatchesInfoById, refetchEventMatchesInfoById } =
        useGetEventMatchesInfoById(event.id)
    const { matchDateById, isFetchingMatchDateById, refetchMatchDateById } =
        useGetMatchDateById(matchDateIdState)

    const { matchById, refetchMatchById, isFetchingMatchById } =
        useGetMatchById(matchIdState)

    const { eventRequestsById, refetchEventRequestsById } =
        useGetEventRequestsById(eventById?.id)

    const handleActivate = async (
        eventId: string,
        startDate: string,
        finishDate: string,
        timeOfFirstMatch: number,
        timeOfLastMatch: number,
        matchDurationInMinutes: number,
        eventType: EventType
    ) => {
        try {
            const activateEventDto = {
                id: eventId,
                startDate: startDate,
                finishDate: finishDate,
                timeOfFirstMatch: timeOfFirstMatch,
                timeOfLastMatch: timeOfLastMatch,
                matchDurationInMinutes: matchDurationInMinutes,
                courtsIds: eventById?.courts.map((c) => c.id),
                autoPopulate: isAutoPopulateOn,
                eventType: eventType,
            }
            const { data: matches }: { data: Match[] } =
                await axiosInstance.post(
                    '/events/activate-event',
                    activateEventDto
                )

            await refetchEventById()
            await refetchEventMatchDates()
            await refetchEventMatchesInfoById()
            return matches
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
            } else {
                setError(true)
                setErrorMessage('Error responding to invitation.')
            }
        }
    }

    const doublesTableData: RegisteredDoublesTable[] | undefined =
        eventById?.eventDoubles?.map((d) => {
            const winningGames = d.double?.gamesWins.length
            const totalGames = d.double?.games.length
            const lostGames = (totalGames ?? 0) - (winningGames ?? 0)
            const gamesDiff = (winningGames ?? 0) - (lostGames ?? 0)

            return {
                eventId: eventById.id ?? null,
                catId: d.double?.categoryId ?? null,
                id: d.double?.id ?? null,
                playerOneName: `${d.double?.players[0].firstName} ${d.double?.players[0].lastName}`,
                playerTwoName: `${d.double?.players[1].firstName} ${d.double?.players[1].lastName}`,
                categoryLevel: d.category?.level || null,
                categoryType: d.category?.type || null,
                matchesWon: d.double?.matchesWins.length || null,
                W: winningGames ?? null,
                T: totalGames ?? null,
                gamesDiff: gamesDiff,
            }
        })

    const eventDays = eventMatchDates?.map((md) => {
        const date = new Date(md.start)
        return date.getDate()
    })

    const eventCourts = eventById?.courts
    const eventCategories = eventById?.categories

    const uniqueValuesForDays = getUniqueValuesForDays(eventDays)

    const uniqueDates = eventMatchDates
        ? eventMatchDates
              .map((md) => {
                  return new Date(md.start)
              })
              .filter((ud) => {
                  if (dayFilter === 'all') {
                      return ud
                  }
                  return ud.getDate().toString() == dayFilter
              })
        : null

    const matchDatesTableData: MatchDatesTableProps[] | undefined =
        eventMatchDates?.map((md) => {
            const startDate = new Date(md.start)
            const startTime = startDate.toLocaleString()
            if (md.match === null) {
                return {
                    number: null,
                    start: startTime,
                    finish: md.finish,
                    matchId: null,
                    doublesOne: null,
                    doublesOneId: null,
                    doublesTwo: null,
                    doublesTwoId: null,
                    court: md.court.name,
                    courtId: md.court.id,
                    matchDateId: md.id,
                    category: null,
                    categoryId: null,
                }
            }
            return {
                number: md.match.number,
                start: startTime,
                finish: md.finish,
                matchId: md.matchId,
                doublesOne: `${md.match.doubles[0].players[0].firstName} ${md.match.doubles[0].players[0].lastName} / ${md.match.doubles[0].players[1].firstName} ${md.match.doubles[0].players[1].lastName}`,
                doublesOneId: md.match.doubles[0].id,
                doublesTwo: `${md.match.doubles[1].players[0].firstName} ${md.match.doubles[1].players[0].lastName} / ${md.match.doubles[1].players[1].firstName} ${md.match.doubles[1].players[1].lastName}`,
                doublesTwoId: md.match.doubles[1].id,
                court: md.court.name,
                courtId: md.court.id,
                matchDateId: md.id,
                category: `${md.match.category.level} ${md.match.category.type}`,
                categoryId: md.match.category.id,
            }
        })

    const filteredMatchDatesTableData: MatchDatesTableProps[] | undefined =
        matchDatesTableData
            ?.filter((md) => {
                if (dayFilter === 'all') {
                    return md
                }
                if (dayFilter !== 'all' && md.start) {
                    const mdDate = new Date(md.start)
                    return mdDate.getDate().toString() == dayFilter
                }
            })
            .filter((md) => {
                if (doublesFilter === 'all') {
                    return md
                }
                if (doublesFilter !== 'all') {
                    return (
                        md.doublesOneId === doublesFilter ||
                        md.doublesTwoId === doublesFilter
                    )
                }
            })
            .filter((md) => {
                if (courtFilter === 'all') {
                    return md
                }
                if (courtFilter !== 'all') {
                    return md.courtId === courtFilter
                }
            })
            .filter((md) => {
                if (categoryFilter === 'all') {
                    return md
                }
                if (categoryFilter !== 'all') {
                    return md.categoryId === categoryFilter
                }
            })
            .filter((md) => {
                if (hasMatchFilter) {
                    return md.matchId !== null
                } else return md
            })

    return (
        <div className="flex flex-col w-full min-h-screen lg:w-4/6 ">
            <div className="flex flex-col gap-2 ">
                <header className="static top-0 flex flex-col items-start h-auto gap-4 px-4 py-4 bg-transparent border-0">
                    <Breadcrumb>
                        <BreadcrumbList>
                            <BreadcrumbItem>
                                <Link to={'/events'}>
                                    <BreadcrumbLink asChild>
                                        <p className="cursor-pointer">
                                            All events
                                        </p>
                                    </BreadcrumbLink>
                                </Link>
                            </BreadcrumbItem>
                            <BreadcrumbSeparator />
                            <BreadcrumbItem>
                                <BreadcrumbPage>
                                    {eventById?.name}
                                </BreadcrumbPage>
                            </BreadcrumbItem>
                        </BreadcrumbList>
                    </Breadcrumb>
                </header>
                {isError && (
                    <div onClick={() => setError(false)} className="mt-4">
                        <ErrorAlert message={errorMessage} />
                    </div>
                )}
                <main className="grid items-start flex-1 grid-cols-1 gap-4 p-4 py-10 sm:px-6 sm:py-2 md:gap-8 ">
                    <div className="space-y-10 xl:col-span-2">
                        {role === 'ADMIN' ? (
                            eventById && eventById.isActive ? null : (
                                <div className="flex flex-col items-center justify-center w-full space-y-5">
                                    {event.eventMatches.length === 0 &&
                                    eventMatchesInfoById ? (
                                        <div className="space-y-10">
                                            <EventRequestsCard
                                                requests={
                                                    eventRequestsById?.eventRequests
                                                }
                                                refetchEventRequestsById={
                                                    refetchEventRequestsById
                                                }
                                                refetchEventById={
                                                    refetchEventById
                                                }
                                            />

                                            <EventInfoCard
                                                event={eventMatchesInfoById}
                                                isAutoPopulateOn={
                                                    isAutoPopulateOn
                                                }
                                                setIsAutoPopulateOn={
                                                    setIsAutoPopulateOn
                                                }
                                                setIsEditEventOn={
                                                    setIsEditEventOn
                                                }
                                            >
                                                {eventMatchesInfoById.suitable &&
                                                eventById ? (
                                                    <CoolButton
                                                        className="items-center justify-center"
                                                        onClick={async () =>
                                                            handleActivate(
                                                                eventById.id,
                                                                eventById.startDate,
                                                                eventById.finishDate,
                                                                eventById.timeOfFirstMatch,
                                                                eventById.timeOfLastMatch,
                                                                eventById.matchDurationInMinutes,
                                                                eventById.eventType
                                                            )
                                                        }
                                                    >
                                                        Activate Event 🎾
                                                    </CoolButton>
                                                ) : (
                                                    <div className="flex flex-col items-center justify-center">
                                                        <Alert
                                                            variant="destructive"
                                                            className="w-11/12 mb-2"
                                                        >
                                                            You need a bigger
                                                            period of time, more
                                                            courts or places in
                                                            order to fit all
                                                            matches...
                                                        </Alert>
                                                        <div className="flex items-center space-x-2"></div>
                                                    </div>
                                                )}
                                            </EventInfoCard>
                                        </div>
                                    ) : null}

                                    {isEditEventOn && eventById ? (
                                        <UpdateEventForm
                                            event={eventById}
                                            refetchEventById={refetchEventById}
                                            refetchEventMatchesInfoById={
                                                refetchEventMatchesInfoById
                                            }
                                            defaultValues={{
                                                eventName: eventById?.name,
                                                categoriesIds: '',
                                                placesIds: '',
                                                startDate: new Date(
                                                    event.startDate
                                                ),
                                                finishDate: new Date(
                                                    event.finishDate
                                                ),
                                                matchDurationInMinutes:
                                                    event.matchDurationInMinutes.toString(),
                                                timeOfFirstMatch:
                                                    event.timeOfFirstMatch.toString(),
                                                timeOfLastMatch:
                                                    event.timeOfLastMatch.toString(),
                                            }}
                                            setIsEditEventOn={setIsEditEventOn}
                                        />
                                    ) : null}
                                </div>
                            )
                        ) : null}

                        {doublesTableData && (
                            <Tabs defaultValue="all">
                                <div className="flex items-center justify-center w-full">
                                    <div className="flex flex-row ml-auto ">
                                        <DropdownMenu>
                                            <DropdownMenuTrigger asChild>
                                                <Button
                                                    variant="outline"
                                                    size="sm"
                                                    className="gap-1 h-7"
                                                >
                                                    <ListFilter className="h-3.5 w-3.5" />
                                                    <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                                                        Filter
                                                    </span>
                                                </Button>
                                            </DropdownMenuTrigger>

                                            <DropdownMenuContent className="w-56">
                                                <DropdownMenuLabel>
                                                    Categories
                                                </DropdownMenuLabel>
                                                <DropdownMenuSeparator />
                                                <DropdownMenuRadioGroup
                                                    value={catFilter}
                                                    onValueChange={setCatFilter}
                                                >
                                                    <DropdownMenuRadioItem value="all">
                                                        All
                                                    </DropdownMenuRadioItem>
                                                    {event.categories.map(
                                                        (c, index) => (
                                                            <DropdownMenuRadioItem
                                                                key={index}
                                                                value={c.id}
                                                            >
                                                                {c.level}{' '}
                                                                {c.type}
                                                            </DropdownMenuRadioItem>
                                                        )
                                                    )}
                                                </DropdownMenuRadioGroup>
                                            </DropdownMenuContent>
                                        </DropdownMenu>
                                        <Button
                                            size="sm"
                                            variant="outline"
                                            className="gap-1 h-7"
                                            onClick={() =>
                                                downloadRegisteredDoublesToExcel(
                                                    doublesTableData
                                                )
                                            }
                                        >
                                            <File className="h-3.5 w-3.5" />
                                            <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                                                Export
                                            </span>
                                        </Button>
                                    </div>
                                </div>
                                <TabsContent value="all">
                                    <Card className="flex flex-col ">
                                        <CardHeader>
                                            <CardTitle>
                                                Doubles Registered
                                            </CardTitle>
                                            <CardDescription>
                                                Manage doubles registered in the
                                                events and generate games.
                                            </CardDescription>
                                        </CardHeader>
                                        <CardContent>
                                            {doublesTableData ? (
                                                <div className="flex flex-col justify-center">
                                                    <EventDoublesTable
                                                        isActive={
                                                            eventById?.isActive
                                                        }
                                                        refetchEventById={
                                                            refetchEventById
                                                        }
                                                        refetchEventMatchesInfoById={
                                                            refetchEventMatchesInfoById
                                                        }
                                                        eventId={eventById?.id}
                                                        columns={doublesColumns}
                                                        data={doublesTableData.filter(
                                                            (td) => {
                                                                if (
                                                                    catFilter ===
                                                                    'all'
                                                                ) {
                                                                    return td
                                                                }
                                                                return (
                                                                    td.catId ===
                                                                    catFilter
                                                                )
                                                            }
                                                        )}
                                                    />
                                                </div>
                                            ) : null}
                                        </CardContent>
                                        <CardFooter>
                                            <div className="text-xs text-muted-foreground">
                                                Showing <strong>1-10</strong> of{' '}
                                                <strong>
                                                    {event.eventDoubles?.length}
                                                </strong>{' '}
                                                doubles
                                            </div>
                                        </CardFooter>
                                    </Card>
                                </TabsContent>
                            </Tabs>
                        )}

                        {toggleMatchesGrid ? (
                            <>
                                <div className="flex flex-col items-center mt-6">
                                    <div className="flex flex-row justify-center">
                                        <h1 className="text-3xl font-bold">
                                            Matches
                                        </h1>
                                        <div className="flex items-end ml-2">
                                            <Square
                                                className="flex cursor-pointer"
                                                onClick={() =>
                                                    setToggleMatchesGrid(false)
                                                }
                                            />
                                        </div>
                                    </div>
                                    <h2 className="py-4 text-xl font-bold">
                                        Pending matches
                                    </h2>
                                    <MatchesGrid
                                        matches={pendingMatches}
                                        refetchEventById={refetchEventById}
                                    />

                                    <h2 className="pt-10 pb-4 text-xl font-bold">
                                        Finished matches
                                    </h2>
                                    <MatchesGrid
                                        matches={finishedMatches}
                                        refetchEventById={refetchEventById}
                                    />
                                </div>
                            </>
                        ) : (
                            <>
                                <div className="flex flex-col mt-6 ">
                                    <div className="flex flex-row justify-center">
                                        <h1 className="text-3xl font-bold">
                                            Matches
                                        </h1>
                                        <div className="flex items-center ml-2">
                                            <Grid3X3
                                                className="flex cursor-pointer"
                                                onClick={() =>
                                                    setToggleMatchesGrid(true)
                                                }
                                            />
                                        </div>
                                    </div>
                                    {/* Pending Matches Carousels */}
                                    {!isFetchingEventById &&
                                    pendingMatches &&
                                    pendingMatches.length !== 0 ? (
                                        <>
                                            <div className="flex flex-col items-center justify-center">
                                                <h1 className="py-2 text-xl font-bold">
                                                    Pending matches
                                                </h1>
                                                <MatchesCarousel
                                                    matches={pendingMatches}
                                                    refetchEventById={
                                                        refetchEventById
                                                    }
                                                />
                                            </div>
                                        </>
                                    ) : null}
                                    {/* Finished Matches Carousels */}
                                    {!isFetchingEventById &&
                                    finishedMatches &&
                                    finishedMatches.length !== 0 ? (
                                        <>
                                            <div className="flex flex-col items-center justify-center">
                                                <h1 className="py-2 text-xl font-bold">
                                                    Finished matches
                                                </h1>
                                                <MatchesCarousel
                                                    matches={finishedMatches}
                                                    refetchEventById={
                                                        refetchEventById
                                                    }
                                                />
                                            </div>
                                        </>
                                    ) : null}
                                </div>
                            </>
                        )}

                        {matchDatesTableData && filteredMatchDatesTableData ? (
                            <>
                                <div className="flex flex-col items-center justify-center">
                                    <div className="flex flex-row pt-10">
                                        <h1 className="text-3xl font-bold ">
                                            Schedule
                                        </h1>
                                        <div className="flex items-center ml-2">
                                            <Calendar className="flex" />
                                        </div>
                                    </div>

                                    {dayFilter === 'all' ? (
                                        <h2 className="text-muted-foreground">
                                            Showing all days
                                        </h2>
                                    ) : null}
                                    {dayFilter !== 'all' && uniqueDates ? (
                                        <h2 className="text-muted-foreground">
                                            {uniqueDates[0].toDateString()}
                                        </h2>
                                    ) : null}

                                    <MatchDatesTable
                                        eventDoubles={eventById?.eventDoubles}
                                        matchDateById={matchDateById}
                                        isFetchingMatchDateById={
                                            isFetchingMatchDateById
                                        }
                                        refetchMatchDateById={
                                            refetchMatchDateById
                                        }
                                        matchById={matchById}
                                        isFetchingMatchById={
                                            isFetchingMatchById
                                        }
                                        refetchMatchById={refetchMatchById}
                                        categories={eventById?.categories}
                                        matches={eventById?.eventMatches}
                                        matchDateIdState={matchDateIdState}
                                        setMatchDateIdState={
                                            setMatchDateIdState
                                        }
                                        matchIdState={matchIdState}
                                        setMatchIdState={setMatchIdState}
                                        matchAssignOn={matchAssignOn}
                                        setMatchAssignOn={setMatchAssignOn}
                                        columns={matchDateColumns}
                                        data={filteredMatchDatesTableData}
                                        refetchEventMatchDates={
                                            refetchEventMatchDates
                                        }
                                        matchDates={eventMatchDates}
                                        dayFilter={dayFilter}
                                        matchDatesTableData={
                                            matchDatesTableData
                                        }
                                        setDayFilter={setDayFilter}
                                        uniqueValuesForDays={
                                            uniqueValuesForDays
                                        }
                                        setDoublesFilter={setDoublesFilter}
                                        setCourtFilter={setCourtFilter}
                                        eventCourts={eventCourts}
                                        eventCategories={eventCategories}
                                        setCategoryFilter={setCategoryFilter}
                                        hasMatchFilter={hasMatchFilter}
                                        setHasMatchFilter={setHasMatchFilter}
                                    />
                                </div>
                            </>
                        ) : null}
                    </div>
                </main>
            </div>
        </div>
    )
}
