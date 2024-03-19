import { createRootRoute, Link, Outlet } from '@tanstack/react-router'
import React, { Suspense } from 'react'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { ReactQueryDevtools } from '@tanstack/react-query-devtools'

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

const queryClient = new QueryClient()
export const Route = createRootRoute({
    component: () => (
        <QueryClientProvider client={queryClient}>
            <>
                <div className="flex gap-2 p-2 text-white bg-slate-800">
                    <Link to="/" className="[&.active]:font-bold">
                        Home
                    </Link>{' '}
                    <Link to="/about" className="[&.active]:font-bold">
                        About
                    </Link>
                </div>
                <hr />
                <Outlet />
                <Suspense>
                    <TanStackRouterDevtools />
                </Suspense>
                <ReactQueryDevtools />
            </>
        </QueryClientProvider>
    ),
})
