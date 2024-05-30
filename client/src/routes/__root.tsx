import { createRootRouteWithContext } from '@tanstack/react-router'
import React, { Suspense } from 'react'
import { QueryClient } from '@tanstack/react-query'
import { ReactQueryDevtools } from '@tanstack/react-query-devtools'
import { AuthContext } from '@/hooks/useAuth'

import { RootSheet } from '@/components/custom/rootSheet'
import { Outlet } from '@tanstack/react-router'
import { UserDropDown } from '@/components/custom/userDropdown'

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

type RouterContext = {
    authentication: AuthContext
    queryClient: QueryClient
}
export const Route = createRootRouteWithContext<RouterContext>()({
    component: Root,
})

function Root() {
    return (
        <>
            <UserDropDown />

            <RootSheet />
            <div className="flex justify-center ml-14">
                <Outlet />
            </div>
            <Suspense>
                <TanStackRouterDevtools />
            </Suspense>
            <ReactQueryDevtools />
        </>
    )
}
