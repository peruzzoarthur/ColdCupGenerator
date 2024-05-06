import { File, ListFilter, Pencil, Search } from 'lucide-react'

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
import { Match, PadelEvent } from '@/types/padel.types'
// import { useGetDoublesInEvent } from '@/hooks/useGetDoublesInEvent'
import axios from 'axios'
import { EventDoublesTable } from './eventsTable/eventDoublesTable'
import { RegisteredDoublesTable, doublesColumns } from './eventsTable/columns'
import { MatchesCarousel } from './matchesCarousel'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { useGetEventById } from '@/hooks/useGetEventById'
import { useState } from 'react'
import {
    MatchDatesTableProps,
    matchDateColumns,
} from './matchDatesTable/columns'
import { MatchDatesTable } from './matchDatesTable/matchDatesTable'
import { getUniqueValuesForDays } from '@/util/getUniqueValuesForDays'
import { CoolButton } from '../ui/moving-border'
import { useGetEventMatchesInfoById } from '@/hooks/useGetEventMatchesInfoById'
import { EventInfoCard } from './eventInfoCard'
import { Alert } from '../ui/alert'
import { useGetEventMatchDates } from '@/hooks/useGetEventMatchDates'
import { useGetMatchDateById } from '@/hooks/useGetMatchDateById'
import { Input } from '../ui/input'
import { downloadToExcel } from '@/lib/xlsx'

type EventDashBoardProps = {
    event: PadelEvent
    toggleEventOff: () => void
    refetchEvents: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<PadelEvent[] | undefined, Error>>
}

export function EventDashboard({
    event,
    toggleEventOff,
    refetchEvents,
}: EventDashBoardProps) {
    const [catFilter, setCatFilter] = useState<string>('all')
    const [dayFilter, setDayFilter] = useState('all')
    const [matchDateIdState, setMatchDateIdState] = useState<
        string | undefined
    >()
    const [matchIdState, setMatchIdState] = useState<string | undefined>()
    const [matchAssignOn, setMatchAssignOn] = useState<boolean>(false)
    const {
        finishedMatches,
        pendingMatches,
        refetchEventById,
        eventById,
        isFetchingEventById,
    } = useGetEventById(event.id)

    const { eventMatchDates, refetchEventMatchDates } = useGetEventMatchDates(
        event.id
    )
    const { eventMatchesInfoById } = useGetEventMatchesInfoById(event.id)
    const { matchDateById, isFetchingMatchDateById, refetchMatchDateById } =
        useGetMatchDateById(matchDateIdState)
    console.log(matchDateById)

    const handleActivate = async (
        eventId: string,
        startDate: string,
        finishDate: string,
        timeOfFirstMatch: number,
        timeOfLastMatch: number,
        matchDurationInMinutes: number
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
            }
            const { data: matches }: { data: Match[] } = await axios.post(
                `${import.meta.env.VITE_SERVER_URL}/events/activate-event`,
                activateEventDto
            )

            await refetchEventById()
            await refetchEventMatchDates()
            return matches
        } catch (error) {
            return error
        }
    }

    const doublesTableData: RegisteredDoublesTable[] | undefined =
        eventById?.eventDoubles?.map((d) => {
            const winningGames = d.double?.gamesWins.length
            const totalGames = d.double?.games.length
            const lostGames = (totalGames ?? 0) - (winningGames ?? 0)
            const gamesDiff = (winningGames ?? 0) - (lostGames ?? 0)

            return {
                catId: d.double?.categoryId,
                id: d.doubleId,
                playerOneName: `${d.double?.players[0].firstName} ${d.double?.players[0].lastName}`,
                playerTwoName: `${d.double?.players[1].firstName} ${d.double?.players[1].lastName}`,
                categoryLevel: d.category?.level,
                categoryType: d.category?.type,
                matchesWon: d.double?.matchesWins.length,
                W: winningGames,
                T: totalGames,
                gamesDiff: gamesDiff,
            }
        })

    const eventDays = eventMatchDates?.map((md) => {
        const date = new Date(md.start)
        return date.getDate()
    })

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
                    doublesTwo: null,
                    court: md.court.name,
                    matchDateId: md.id,
                }
            }
            return {
                number: md.match.number,
                start: startTime,
                finish: md.finish,
                matchId: md.matchId,
                doublesOne: `${md.match.doubles[0].players[0].firstName} ${md.match.doubles[0].players[0].lastName} / ${md.match.doubles[0].players[1].firstName} ${md.match.doubles[0].players[1].lastName}`,
                doublesTwo: `${md.match.doubles[1].players[0].firstName} ${md.match.doubles[1].players[0].lastName} / ${md.match.doubles[1].players[1].firstName} ${md.match.doubles[1].players[1].lastName}`,
                court: md.court.name,
                matchDateId: md.id,
            }
        })

    return (
        <div className="flex flex-col justify-center w-full pl-2 pr-2 align-center">
            {/* Header && Breadcrumb */}
            <div className="flex">
                <header className="sticky top-0 z-30 flex items-center gap-4 px-4 h-14 bg-background sm:h-auto sm:border-0 sm:bg-transparent sm:px-6">
                    <Breadcrumb>
                        <BreadcrumbList>
                            <BreadcrumbItem>
                                <BreadcrumbLink
                                    asChild
                                    onClick={toggleEventOff}
                                >
                                    <p className="cursor-pointer">All events</p>
                                </BreadcrumbLink>
                            </BreadcrumbItem>
                            <BreadcrumbSeparator />
                            <BreadcrumbItem>
                                <BreadcrumbPage>{event.name}</BreadcrumbPage>
                            </BreadcrumbItem>
                        </BreadcrumbList>
                    </Breadcrumb>
                </header>
            </div>

            {/* Event Info Card */}
            {eventById && eventById.isActive ? null : (
                <div className="flex justify-center p-10">
                    {event.matches.length === 0 && eventMatchesInfoById ? (
                        <EventInfoCard event={eventMatchesInfoById}>
                            {eventMatchesInfoById.suitable ? (
                                <CoolButton
                                    className="items-center justify-center"
                                    onClick={async () =>
                                        handleActivate(
                                            event.id,
                                            event.startDate,
                                            event.finishDate,
                                            event.timeOfFirstMatch,
                                            event.timeOfLastMatch,
                                            event.matchDurationInMinutes
                                        )
                                    }
                                >
                                    Generate matches 🎾
                                </CoolButton>
                            ) : (
                                <div className="flex flex-col items-center justify-center">
                                    <Alert
                                        variant="destructive"
                                        className="w-11/12 mb-2"
                                    >
                                        You need a bigger period of time, more
                                        courts or places in order to fit all
                                        matches...
                                    </Alert>
                                    <div className="flex items-center space-x-2">
                                        <CoolButton borderClassName="h-10 w-60 opacity-[0.3] bg-[radial-gradient(var(--red-300)_40%,transparent_10%)]">
                                            Edit
                                        </CoolButton>
                                    </div>
                                </div>
                            )}
                        </EventInfoCard>
                    ) : null}
                </div>
            )}

            {/* Registered Doubles Table */}
            <Tabs defaultValue="all">
                <div className="flex items-center justify-center w-full">
                    <div className="flex flex-row ml-auto">
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
                                    {event.categories.map((c, index) => (
                                        <DropdownMenuRadioItem
                                            key={index}
                                            value={c.id}
                                        >
                                            {c.level} {c.type}
                                        </DropdownMenuRadioItem>
                                    ))}
                                </DropdownMenuRadioGroup>
                            </DropdownMenuContent>
                        </DropdownMenu>
                        <Button
                            size="sm"
                            variant="outline"
                            className="gap-1 h-7"
                        >
                            <File className="h-3.5 w-3.5" />
                            <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                                Export
                            </span>
                        </Button>
                    </div>
                </div>
                <TabsContent value="all">
                    <Card className="flex flex-col w-full">
                        <CardHeader>
                            <CardTitle>Doubles Registered</CardTitle>
                            <CardDescription>
                                Manage doubles registered in the events and
                                generate games.
                            </CardDescription>
                        </CardHeader>
                        <CardContent>
                            {doublesTableData ? (
                                <div className="flex flex-col justify-center">
                                    <EventDoublesTable
                                        columns={doublesColumns}
                                        data={doublesTableData.filter((td) => {
                                            if (catFilter === 'all') {
                                                return td
                                            }
                                            return td.catId === catFilter
                                        })}
                                    />
                                </div>
                            ) : null}
                        </CardContent>
                        <CardFooter>
                            <div className="text-xs text-muted-foreground">
                                Showing <strong>1-10</strong> of{' '}
                                <strong>{event.eventDoubles?.length}</strong>{' '}
                                doubles
                            </div>
                        </CardFooter>
                    </Card>
                </TabsContent>
            </Tabs>
            <h1 className="text-2xl font-bold">Matches</h1>
            {/* Pending Matches Carousels */}
            {!isFetchingEventById &&
            pendingMatches &&
            pendingMatches.length !== 0 ? (
                <>
                    <h1 className="text-xl font-bold">Pending matches</h1>
                    <div className="flex flex-col items-center justify-center">
                        <MatchesCarousel
                            matches={pendingMatches}
                            refetchEvents={refetchEvents}
                            refetchEventById={refetchEventById}
                        />
                    </div>
                </>
            ) : null}
            {/* Fininished Matches Carousels */}
            {!isFetchingEventById &&
            finishedMatches &&
            finishedMatches.length !== 0 ? (
                <>
                    <h1 className="text-xl font-bold">Finished matches</h1>
                    <div className="flex flex-col items-center justify-center">
                        <MatchesCarousel
                            matches={finishedMatches}
                            refetchEvents={refetchEvents}
                            refetchEventById={refetchEventById}
                        />
                    </div>
                </>
            ) : null}
            {/* Schedule - Matches Data Table */}
            {matchDatesTableData ? (
                <>
                    <h1 className="text-xl font-bold">Schedule</h1>
                    {dayFilter === 'all' ? <h2>Showing all</h2> : null}
                    {dayFilter !== 'all' && uniqueDates ? (
                        <h2>{uniqueDates[0].toDateString()}</h2>
                    ) : null}

                    <div className="flex items-center gap-2 ml-auto">
                        <div className="relative flex-1 ml-auto md:grow-0">
                            <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                            <Input
                                type="search"
                                placeholder="Search..."
                                className="w-full rounded-lg bg-background pl-8 md:w-[200px] lg:w-[320px]"
                            />
                        </div>
                        <Button
                            variant="outline"
                            size="sm"
                            className="gap-1 h-7"
                            onClick={() => {
                                if (!matchAssignOn) {
                                    setMatchAssignOn(true)
                                } else {
                                    setMatchAssignOn(false)
                                }
                            }}
                        >
                            <Pencil className="h-3.5 w-3.5" />
                            <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                                Edit
                            </span>
                        </Button>
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
                                <DropdownMenuLabel>Days</DropdownMenuLabel>
                                <DropdownMenuSeparator />
                                <DropdownMenuRadioGroup
                                    value={dayFilter}
                                    onValueChange={setDayFilter}
                                >
                                    <DropdownMenuRadioItem value="all">
                                        All
                                    </DropdownMenuRadioItem>
                                    {uniqueValuesForDays.map((d, index) => (
                                        <DropdownMenuRadioItem
                                            key={index}
                                            value={d.toString()}
                                        >
                                            {d}
                                        </DropdownMenuRadioItem>
                                    ))}
                                </DropdownMenuRadioGroup>
                            </DropdownMenuContent>
                        </DropdownMenu>
                        <Button
                            size="sm"
                            variant="outline"
                            className="gap-1 h-7"
                            onClick={() =>
                                console.log(
                                    downloadToExcel(matchDatesTableData)
                                )
                            } //!
                        >
                            <File className="h-3.5 w-3.5" />
                            <span className="sr-only sm:not-sr-only sm:whitespace-nowrap">
                                Export
                            </span>
                        </Button>
                    </div>
                    <div className="flex flex-col justify-center">
                        <MatchDatesTable
                            matchDateById={matchDateById}
                            isFetchingMatchDateById={isFetchingMatchDateById}
                            refetchMatchDateById={refetchMatchDateById}
                            categories={eventById?.categories}
                            matchDateIdState={matchDateIdState}
                            setMatchDateIdState={setMatchDateIdState}
                            matchIdState={matchIdState}
                            setMatchIdState={setMatchIdState}
                            matchAssignOn={matchAssignOn}
                            setMatchAssignOn={setMatchAssignOn}
                            columns={matchDateColumns}
                            data={matchDatesTableData.filter((md) => {
                                if (dayFilter === 'all') {
                                    return md
                                }
                                if (md.start) {
                                    const mdDate = new Date(md.start)
                                    return (
                                        mdDate.getDate().toString() == dayFilter
                                    )
                                }
                            })}
                            refetchEventMatchDates={refetchEventMatchDates}
                            matchDates={eventMatchDates}
                        />
                    </div>
                </>
            ) : null}
        </div>
    )
}
