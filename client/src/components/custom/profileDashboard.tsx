import {
    Breadcrumb,
    BreadcrumbItem,
    BreadcrumbLink,
    BreadcrumbList,
    BreadcrumbPage,
    BreadcrumbSeparator,
} from '@/components/ui/breadcrumb'

import { Link } from '@tanstack/react-router'
import { User } from '@/types/padel.types'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { useState } from 'react'
import { CheckedState } from '@radix-ui/react-checkbox'
import { useInvitations } from '@/hooks/useInvitations'
import { useGetPlayers } from '@/hooks/useGetPlayers'
import { useGetCategories } from '@/hooks/useGetCategories'
import { useGetPlayerById } from '@/hooks/useGetPlayerById'
import { ProfileDoublesTableData } from './profileDoublesTable/profileDoublesColumns'
import { ProfileEventsAttendedCard } from './profileEventsAttendedCard'
import { ProfileMatchesInfoCard } from './profileMatchesInfoCard'
import { ProfileActivityCard } from './profileActivityCard'
import { ProfileDoublesTableCard } from './profileDoublesTableCard'
import { ProfileMatchesTabs } from './profileMatchesTabs'
import { ProfileMatchesTableCard } from './profileMatchesTableCard'
import { ProfileInvitesCard } from './profileInvitesCard'
import { ProfileHeaderCard } from './profileHeaderCard'
import { ProfileMatchesTableData } from './profileMatchesTable/profileMatchesColumns'

type ProfileDashboardProps = {
    user: User
    refetchUser: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<User | null, Error>>
}

export function ProfileDashboard({ user, refetchUser }: ProfileDashboardProps) {
    const [matchesPeriod, setMatchesPeriod] = useState<string>('all')
    const [showPendingMatches, setShowPendingMatches] =
        useState<CheckedState>(true)
    const [showFinishedMatches, setShowFinishedMatches] =
        useState<CheckedState>(true)

    const { playerInvitations } = useInvitations()
    const { allPlayers } = useGetPlayers()
    const { allCategories } = useGetCategories()
    const { playerById } = useGetPlayerById(user.playerId)

    const totalMatchesWon = playerById?.doubles.reduce(
        (acc, curr) => acc + curr.matchesWins.length,
        0
    )

    const totalMatchesPlayed = playerById?.doubles.reduce(
        (acc, curr) => acc + curr.matches.length,
        0
    )

    const eventsAttended = playerById?.doubles.reduce(
        (acc, curr) => acc + curr.eventDouble.length,
        0
    )

    const userDoubles = playerById?.doubles

    const profileDoublesTableData: ProfileDoublesTableData[] | undefined =
        userDoubles?.map((d) => {
            return {
                id: d.id ?? null,
                playerOneName: `${d.players[0].firstName} ${d.players[0].lastName}`,
                playerTwoName: `${d.players[1].firstName} ${d.players[1].lastName}`,
                categoryLevel: d.category?.level || null,
                categoryType: d.category?.type || null,
                matches: d.matches.length,
                matchesWins: d.matchesWins.length,
            }
        })

    const userMatches = userDoubles?.flatMap((d) => {
        return d.matches
    })
    console.log(userMatches)
    const profileMatchesTableData: ProfileMatchesTableData[] | undefined =
        userMatches?.map((m) => {
            const doublesOneGames = m.sets[0].games.filter(
                (g) => g.winnerId === m.doubles[0].id
            ).length
            const doublesTwoGames = m.sets[0].games.filter(
                (g) => g.winnerId === m.doubles[1].id
            ).length
            return {
                id: m.id,
                matchStart: m.matchDate?.start ?? null,
                eventName: m.event.name ?? null,
                doublesOne: `${m.doubles[0].players[0].firstName} ${m.doubles[0].players[0].lastName} / ${m.doubles[0].players[1].firstName} ${m.doubles[0].players[1].lastName}`,
                doublesTwo: `${m.doubles[1].players[0].firstName} ${m.doubles[1].players[0].lastName} / ${m.doubles[1].players[1].firstName} ${m.doubles[1].players[1].lastName}`,
                isFinished: m.isFinished,
                doublesOneGames: doublesOneGames ?? null,
                doublesTwoGames: doublesTwoGames ?? null,
            }
        })

    // console.log(profileMatchesTableData)

    return (
        <div className="flex flex-col w-full min-h-screen ">
            <div className="flex flex-col gap-2 ">
                <header className="static top-0 flex flex-col items-start h-auto gap-4 px-4 py-4 bg-transparent border-0">
                    <Breadcrumb className="flex">
                        <BreadcrumbList>
                            <BreadcrumbItem>
                                <BreadcrumbLink asChild>
                                    <Link to="/">Home</Link>
                                </BreadcrumbLink>
                            </BreadcrumbItem>
                            <BreadcrumbSeparator />
                            <BreadcrumbItem>
                                <BreadcrumbPage>Profile</BreadcrumbPage>
                            </BreadcrumbItem>
                        </BreadcrumbList>
                    </Breadcrumb>
                    <ProfileHeaderCard user={user} refetchUser={refetchUser} />
                </header>

                <main className="grid items-start flex-1 grid-cols-1 gap-4 p-4 py-10 sm:px-6 sm:py-2 md:gap-8 lg:grid-cols-3 xl:grid-cols-3">
                    <div className="grid items-start gap-4 md:gap-8 lg:col-span-2">
                        <div className="grid gap-4 sm:grid-cols-2 md:grid-cols-4 lg:grid-cols-2 xl:grid-cols-4">
                            <ProfileActivityCard
                                allCategories={allCategories}
                                allPlayers={allPlayers}
                            />
                            <ProfileMatchesInfoCard
                                totalMatchesWon={totalMatchesWon}
                                totalMatchesPlayed={totalMatchesPlayed}
                            />

                            <ProfileEventsAttendedCard
                                eventsAttended={eventsAttended}
                            />
                        </div>

                        <ProfileDoublesTableCard
                            profileDoublesTableData={profileDoublesTableData}
                        />
                        <ProfileMatchesTabs
                            matchesPeriod={matchesPeriod}
                            setMatchesPeriod={setMatchesPeriod}
                            showPendingMatches={showPendingMatches}
                            setShowPendingMatches={setShowPendingMatches}
                            showFinishedMatches={showFinishedMatches}
                            setShowFinishedMatches={setShowFinishedMatches}
                        />
                        <ProfileMatchesTableCard
                            matchesPeriod={matchesPeriod}
                            profileMatchesTableData={profileMatchesTableData}
                        />
                    </div>
                    <div>
                        <ProfileInvitesCard
                            playerInvitations={playerInvitations}
                        />
                    </div>
                </main>
            </div>
        </div>
    )
}
