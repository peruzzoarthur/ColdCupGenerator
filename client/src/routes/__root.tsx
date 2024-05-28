import {
    createRootRouteWithContext,
    Link,
    Outlet,
} from '@tanstack/react-router'
import React, { Suspense } from 'react'
import { QueryClient } from '@tanstack/react-query'
import { ReactQueryDevtools } from '@tanstack/react-query-devtools'
import { UserDropDown } from '@/components/custom/userDropdown'
import { AuthContext } from '@/hooks/useAuth'
import { useGetRole } from '@/hooks/useGetRole'
import {
    Tooltip,
    TooltipContent,
    TooltipTrigger,
    TooltipProvider,
} from '@/components/ui/tooltip'
import {
    CalendarDays,
    CircleUser,
    Home,
    ListOrdered,
    Settings,
    Tent,
    User,
    Users2,
} from 'lucide-react'

const TanStackRouterDevtools =
    process.env.NODE_ENV === 'production'
        ? () => null // Render nothing in production
        : React.lazy(() =>
              // Lazy load in development
              import('@tanstack/router-devtools').then((res) => ({
                  default: res.TanStackRouterDevtools,
                  // For Embedded Mode
                  // default: res.TanStackRouterDevtoolsPanel
              }))
          )

// const queryClient = new QueryClient()

type RouterContext = {
    authentication: AuthContext
    queryClient: QueryClient
}
export const Route = createRootRouteWithContext<RouterContext>()({
    component: Root,
})

function Root() {
    const { role } = useGetRole()
    return (
        <>
            <div className="flex flex-col w-full min-h-screen bg-muted/40">
                <aside className="fixed inset-y-0 left-0 z-10 flex-col hidden border-r w-14 bg-background sm:flex">
                    <nav className="flex flex-col items-center gap-4 px-2 sm:py-4">
                        <div className="space-x-2">
                            <UserDropDown />
                        </div>
                        <TooltipProvider>
                            <Tooltip>
                                <TooltipTrigger asChild>
                                    <Link
                                        to="/"
                                        className="flex items-center justify-center transition-colors rounded-lg h-9 w-9 [&.active]:bg-accent text-accent-foreground hover:text-foreground md:h-8 md:w-8"
                                    >
                                        <Home className="w-5 h-5" />
                                        <span className="sr-only">Home</span>
                                    </Link>
                                </TooltipTrigger>
                                <TooltipContent side="right">
                                    Home
                                </TooltipContent>
                            </Tooltip>
                            <Tooltip>
                                <TooltipTrigger asChild>
                                    <Link
                                        to="/profile"
                                        className="flex items-center justify-center transition-colors rounded-lg h-9 w-9 [&.active]:bg-accent text-accent-foreground hover:text-foreground md:h-8 md:w-8"
                                    >
                                        <User className="w-5 h-5" />
                                        <span className="sr-only">Profile</span>
                                    </Link>
                                </TooltipTrigger>
                                <TooltipContent side="right">
                                    Profile
                                </TooltipContent>
                            </Tooltip>
                            <Tooltip>
                                <TooltipTrigger asChild>
                                    <Link
                                        to="/events"
                                        className="flex items-center justify-center transition-colors rounded-lg h-9 w-9 [&.active]:bg-accent text-accent-foreground hover:text-foreground md:h-8 md:w-8"
                                    >
                                        <CalendarDays className="w-5 h-5" />
                                        <span className="sr-only">Events</span>
                                    </Link>
                                </TooltipTrigger>
                                <TooltipContent side="right">
                                    Events
                                </TooltipContent>
                            </Tooltip>
                        </TooltipProvider>
                    </nav>
                    <nav className="flex flex-col items-center gap-4 px-2 mt-auto sm:py-4">
                        <TooltipProvider>
                            {role === 'ADMIN' && (
                                <>
                                    <Tooltip>
                                        <TooltipTrigger asChild>
                                            <Link
                                                to="/categories"
                                                className="flex items-center justify-center transition-colors rounded-lg h-9 w-9 [&.active]:bg-accent text-accent-foreground hover:text-foreground md:h-8 md:w-8"
                                            >
                                                <ListOrdered className="w-5 h-5" />
                                                <span className="sr-only">
                                                    Categories
                                                </span>
                                            </Link>
                                        </TooltipTrigger>
                                        <TooltipContent side="right">
                                            Categories
                                        </TooltipContent>
                                    </Tooltip>
                                    <Tooltip>
                                        <TooltipTrigger asChild>
                                            <Link
                                                to="/players"
                                                className="flex items-center justify-center transition-colors rounded-lg h-9 w-9 [&.active]:bg-accent text-accent-foreground hover:text-foreground md:h-8 md:w-8"
                                            >
                                                <CircleUser className="w-5 h-5" />
                                                <span className="sr-only">
                                                    Players
                                                </span>
                                            </Link>
                                        </TooltipTrigger>
                                        <TooltipContent side="right">
                                            Players
                                        </TooltipContent>
                                    </Tooltip>
                                    <Tooltip>
                                        <TooltipTrigger asChild>
                                            <Link
                                                to="/doubles"
                                                className="flex items-center justify-center transition-colors rounded-lg h-9 w-9 [&.active]:bg-accent text-accent-foreground hover:text-foreground md:h-8 md:w-8"
                                            >
                                                <Users2 className="w-5 h-5" />
                                                <span className="sr-only">
                                                    Doubles
                                                </span>
                                            </Link>
                                        </TooltipTrigger>
                                        <TooltipContent side="right">
                                            Doubles
                                        </TooltipContent>
                                    </Tooltip>
                                    <Tooltip>
                                        <TooltipTrigger asChild>
                                            <Link
                                                to="/places"
                                                className="flex items-center justify-center transition-colors rounded-lg h-9 w-9 [&.active]:bg-accent text-accent-foreground hover:text-foreground md:h-8 md:w-8"
                                            >
                                                <Tent className="w-5 h-5" />
                                                <span className="sr-only">
                                                    Places
                                                </span>
                                            </Link>
                                        </TooltipTrigger>
                                        <TooltipContent side="right">
                                            Places
                                        </TooltipContent>
                                    </Tooltip>
                                </>
                            )}

                            <Tooltip>
                                <TooltipTrigger asChild>
                                    <Link
                                        to="/"
                                        className="flex items-center justify-center transition-colors rounded-lg h-9 w-9 text-muted-foreground hover:text-foreground md:h-8 md:w-8"
                                    >
                                        <Settings className="w-5 h-5" />
                                        <span className="sr-only">
                                            Settings
                                        </span>
                                    </Link>
                                </TooltipTrigger>
                                <TooltipContent side="right">
                                    Settings
                                </TooltipContent>
                            </Tooltip>
                        </TooltipProvider>
                    </nav>
                </aside>

                <div className="w-full mt-5">
                    <Outlet />
                </div>
            </div>

            <Suspense>
                <TanStackRouterDevtools />
            </Suspense>
            <ReactQueryDevtools />
            {/* </div> */}
        </>
        // </QueryClientProvider>
    )
}
