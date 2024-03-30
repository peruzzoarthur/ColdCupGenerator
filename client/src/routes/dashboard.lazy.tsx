import { TestDashboard } from '@/components/custom/testDashboard'
import { createLazyFileRoute } from '@tanstack/react-router'

export const Route = createLazyFileRoute('/dashboard')({
    component: Dashboard,
})

function Dashboard() {
    return (
        <>
            <TestDashboard />
        </>
    )
}
