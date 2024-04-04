import { File, ListFilter, Search } from 'lucide-react'

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
    DropdownMenuCheckboxItem,
    DropdownMenuContent,
    DropdownMenuLabel,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { Input } from '@/components/ui/input'

import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { Match, PadelEvent } from '@/types/padel.types'
// import { useGetDoublesInEvent } from '@/hooks/useGetDoublesInEvent'
import axios from 'axios'
import { EventDoublesTable } from './eventsTable/eventDoublesTable'
import { RegisteredDoublesTable, columns } from './eventsTable/columns'
import { MatchesCarousel } from './matchesCarousel'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { useState } from 'react'

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
    const [matches, setMatches] = useState<Match[]>(event.matches)

    const handleActivate = async (eventId: string) => {
        try {
            const requestEventByIdDto = {
                id: eventId,
            }
            const { data: matches }: { data: Match[] } = await axios.post(
                `${import.meta.env.VITE_SERVER_URL}/events/activate-event`,
                requestEventByIdDto
            )
            // setActivate(true)
            return matches
        } catch (error) {
            return error
        }
    }

    const tableData: RegisteredDoublesTable[] | undefined =
        event?.eventDoubles?.map((d) => {
            return {
                id: d.doubleId,
                playerOneName: `${d.double?.players[0].firstName} ${d.double?.players[0].lastName}`,
                playerTwoName: `${d.double?.players[1].firstName} ${d.double?.players[1].lastName}`,
                categoryLevel: d.category?.level,
                categoryType: d.category?.type,
            }
        })

    return (
        <div className="flex flex-col w-full min-h-screen bg-muted/40">
            <div className="flex flex-col sm:gap-4 sm:py-4 sm:pl-14">
                <header className="sticky top-0 z-30 flex items-center gap-4 px-4 border-b h-14 bg-background sm:static sm:h-auto sm:border-0 sm:bg-transparent sm:px-6">
                    <Breadcrumb className="hidden md:flex">
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
                                <BreadcrumbPage>Specific Event</BreadcrumbPage>
                            </BreadcrumbItem>
                        </BreadcrumbList>
                    </Breadcrumb>
                    <div className="relative flex-1 ml-auto md:grow-0">
                        <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                        <Input
                            type="search"
                            placeholder="Search..."
                            className="w-full rounded-lg bg-background pl-8 md:w-[200px] lg:w-[320px]"
                        />
                    </div>
                </header>
                <main className="grid items-start flex-1 gap-4 p-4 sm:px-6 sm:py-0 md:gap-8">
                    <Tabs defaultValue="all">
                        <div className="flex items-center">
                            <TabsList>
                                <TabsTrigger value="all">All</TabsTrigger>
                                <TabsTrigger value="active">Active</TabsTrigger>
                                <TabsTrigger value="finished">
                                    Finished
                                </TabsTrigger>
                            </TabsList>
                            <div className="flex items-center gap-2 ml-auto">
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
                                    <DropdownMenuContent align="end">
                                        <DropdownMenuLabel>
                                            Filter by
                                        </DropdownMenuLabel>
                                        <DropdownMenuSeparator />
                                        <DropdownMenuCheckboxItem checked>
                                            Active
                                        </DropdownMenuCheckboxItem>

                                        <DropdownMenuCheckboxItem>
                                            Finished
                                        </DropdownMenuCheckboxItem>
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
                            <Card>
                                <CardHeader>
                                    <CardTitle>Doubles Registered</CardTitle>
                                    <CardDescription>
                                        Manage doubles registered in the events
                                        and generate games.
                                    </CardDescription>
                                </CardHeader>
                                <CardContent>
                                    {tableData ? (
                                        <EventDoublesTable
                                            columns={columns}
                                            data={tableData}
                                        />
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
                    <div className="flex justify-center">
                        <Button
                            className="w-48 mb-2 mr-2 "
                            onClick={async () => handleActivate(event.id)}
                        >
                            Generate matches 🎾
                        </Button>
                    </div>

                    <h1 className="text-2xl font-bold">Matches</h1>

                    <h1 className="text-xl font-bold">Pending matches</h1>
                    <div className="flex justify-center">
                        <MatchesCarousel
                            matches={matches.filter(
                                (match) => match.isFinished === false
                            )}
                            setMatches={setMatches}
                            refetchEvents={refetchEvents}
                            eventId={event.id}
                        />
                    </div>

                    <h1 className="text-xl font-bold">Finished matches</h1>
                    <div className="flex justify-center">
                        <MatchesCarousel
                            matches={matches.filter(
                                (match) => match.isFinished === true
                            )}
                            setMatches={setMatches}
                            refetchEvents={refetchEvents}
                            eventId={event.id}
                        />
                    </div>

                    {/* <Button onClick={handleReloadCarousel}>
                        Reload Carousel
                    </Button> */}
                </main>
            </div>
        </div>
    )
}
