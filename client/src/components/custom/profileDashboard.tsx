import { ChevronLeft, ChevronRight, Copy, ListFilter } from 'lucide-react'

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
import {
    Pagination,
    PaginationContent,
    PaginationItem,
} from '@/components/ui/pagination'
import { Progress } from '@/components/ui/progress'

import { Tabs, TabsList, TabsTrigger } from '@/components/ui/tabs'

import { Link } from '@tanstack/react-router'
import { User } from '@/types/padel.types'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { ProfilePictureDrawerDialog } from './profilePictureDrawer'
import { useState } from 'react'
import { CheckedState } from '@radix-ui/react-checkbox'
import avatar from '../../styles/jpg/user_template.jpg'
import { useInvitations } from '@/hooks/useInvitations'
import { InvitationBlock } from './invitationBlock'
import { FindPlayersDrawerDialog } from './findPlayersDrawerDialog'
import { useGetPlayers } from '@/hooks/useGetPlayers'
import { useGetCategories } from '@/hooks/useGetCategories'

type ProfileDashboardProps = {
    user: User
    refetchUser: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<User | null, Error>>
}

export function ProfileDashboard({ user, refetchUser }: ProfileDashboardProps) {
    const [matchesPeriod, setMatchesPeriod] = useState<string>('week')
    const [showPendingMatches, setShowPendingMatches] =
        useState<CheckedState>(true)
    const [showFinishedMatches, setShowFinishedMatches] =
        useState<CheckedState>(true)

    const { playerInvitations } = useInvitations()
    const { allPlayers } = useGetPlayers()
    const { allCategories } = useGetCategories()

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
                    <Card className="flex w-full">
                        <div className="flex space-x-8">
                            <div className="flex flex-col items-center mt-5 ml-5">
                                <div className="p-2 mt-2 text-4xl">
                                    Hello {user.firstName}!
                                </div>
                                {user.profileImage ? (
                                    <img
                                        className="rounded-full min-w-52 h-52"
                                        src={user.profileImage}
                                    />
                                ) : (
                                    <img
                                        src={avatar}
                                        className="rounded-full min-w-52 h-52"
                                    />
                                )}
                                <ProfilePictureDrawerDialog
                                    refetchUser={refetchUser}
                                />
                            </div>
                        </div>
                    </Card>
                </header>

                <main className="grid items-start flex-1 grid-cols-1 gap-4 p-4 py-10 sm:px-6 sm:py-2 md:gap-8 lg:grid-cols-3 xl:grid-cols-3">
                    <div className="grid items-start gap-4 auto-rows-max md:gap-8 lg:col-span-2">
                        {/* Info cards */}
                        <div className="grid gap-4 sm:grid-cols-2 md:grid-cols-4 lg:grid-cols-2 xl:grid-cols-4">
                            <Card
                                className="sm:col-span-2"
                                x-chunk="dashboard-05-chunk-0"
                            >
                                <CardHeader className="pb-3">
                                    <CardTitle>Your Doubles</CardTitle>
                                    <CardDescription className="max-w-lg leading-relaxed text-balance">
                                        Manage your doubles and invite friends
                                        to play together here.
                                    </CardDescription>
                                </CardHeader>
                                <CardFooter>
                                    <FindPlayersDrawerDialog
                                        players={allPlayers}
                                        categories={allCategories}
                                    />
                                </CardFooter>
                            </Card>
                            <Card>
                                <CardHeader className="pb-2">
                                    <CardDescription>
                                        Matches won
                                    </CardDescription>
                                    <CardTitle className="text-4xl">
                                        1
                                    </CardTitle>
                                </CardHeader>
                                <CardContent>
                                    <div className="text-xs text-muted-foreground">
                                        played 2 matches.
                                    </div>
                                </CardContent>
                                <CardFooter>
                                    <Progress
                                        value={50}
                                        aria-label="win/matches"
                                    />
                                </CardFooter>
                            </Card>
                            <Card>
                                <CardHeader className="pb-2">
                                    <CardDescription>
                                        Events attended
                                    </CardDescription>
                                    <CardTitle className="text-4xl">
                                        1
                                    </CardTitle>
                                </CardHeader>
                                <CardContent>
                                    <div className="text-xs text-muted-foreground">
                                        +10% more than average players
                                    </div>
                                </CardContent>
                                <CardFooter>
                                    <Progress
                                        value={12}
                                        aria-label="12% increase"
                                    />
                                </CardFooter>
                            </Card>
                        </div>

                        {/* matches-tabs */}
                        <Tabs
                            defaultValue={matchesPeriod}
                            onValueChange={(value) => setMatchesPeriod(value)}
                        >
                            <div className="flex items-center">
                                <TabsList>
                                    <TabsTrigger value="week">Week</TabsTrigger>
                                    <TabsTrigger value="month">
                                        Month
                                    </TabsTrigger>
                                    <TabsTrigger value="year">Year</TabsTrigger>
                                    <TabsTrigger value="all">All</TabsTrigger>
                                </TabsList>
                                <div className="flex items-center gap-2 ml-auto">
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
                                            <DropdownMenuLabel>
                                                Filter by
                                            </DropdownMenuLabel>
                                            <DropdownMenuSeparator />

                                            <DropdownMenuCheckboxItem
                                                checked={showFinishedMatches}
                                                onCheckedChange={
                                                    setShowFinishedMatches
                                                }
                                            >
                                                Finished
                                            </DropdownMenuCheckboxItem>
                                            <DropdownMenuCheckboxItem
                                                checked={showPendingMatches}
                                                onCheckedChange={
                                                    setShowPendingMatches
                                                }
                                            >
                                                Pending
                                            </DropdownMenuCheckboxItem>
                                        </DropdownMenuContent>
                                    </DropdownMenu>
                                </div>
                            </div>
                        </Tabs>

                        {/* matches-form */}
                        <Card>
                            <CardHeader className="p-7">
                                <CardTitle>Matches</CardTitle>
                                <CardDescription>
                                    Your matches list.
                                </CardDescription>
                                <p>{matchesPeriod}</p>
                            </CardHeader>
                            <CardContent>Add the table here.</CardContent>
                        </Card>
                    </div>

                    {/* Invites */}
                    <div>
                        <Card className="overflow-hidden">
                            <CardHeader className="flex flex-row items-start bg-muted/50">
                                <div className="grid gap-0.5">
                                    <CardTitle className="flex items-center gap-2 text-lg group">
                                        Invites
                                        <Button
                                            size="icon"
                                            variant="outline"
                                            className="w-6 h-6 transition-opacity opacity-0 group-hover:opacity-100"
                                        >
                                            <Copy className="w-3 h-3" />
                                            <span className="sr-only">
                                                Handle invitations here
                                            </span>
                                        </Button>
                                    </CardTitle>
                                    <CardDescription>
                                        your invitations
                                    </CardDescription>
                                </div>
                            </CardHeader>
                            <CardContent className="p-6 text-sm">
                                <div className="grid gap-3">
                                    {playerInvitations &&
                                    playerInvitations.invitations.length !==
                                        0 ? (
                                        playerInvitations?.invitations.map(
                                            (i, index) => (
                                                <div key={index}>
                                                    <InvitationBlock
                                                        playerId={
                                                            playerInvitations.playerId
                                                        }
                                                        invitation={i}
                                                    />
                                                </div>
                                            )
                                        )
                                    ) : (
                                        <div>you have no invites yet</div>
                                    )}
                                </div>
                            </CardContent>
                            <CardFooter className="flex flex-row items-center px-6 py-3 border-t bg-muted/50">
                                <div className="text-xs text-muted-foreground">
                                    I need to do pagination for the invites get
                                    all route.
                                </div>
                                <Pagination className="w-auto ml-auto mr-0">
                                    <PaginationContent>
                                        <PaginationItem>
                                            <Button
                                                size="icon"
                                                variant="outline"
                                                className="w-6 h-6"
                                            >
                                                <ChevronLeft className="h-3.5 w-3.5" />
                                                <span className="sr-only">
                                                    Previous Order
                                                </span>
                                            </Button>
                                        </PaginationItem>
                                        <PaginationItem>
                                            <Button
                                                size="icon"
                                                variant="outline"
                                                className="w-6 h-6"
                                            >
                                                <ChevronRight className="h-3.5 w-3.5" />
                                                <span className="sr-only">
                                                    Next Order
                                                </span>
                                            </Button>
                                        </PaginationItem>
                                    </PaginationContent>
                                </Pagination>
                            </CardFooter>
                        </Card>
                    </div>
                </main>
            </div>
        </div>
    )
}
