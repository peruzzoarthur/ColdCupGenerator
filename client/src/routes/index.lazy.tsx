import { createLazyFileRoute } from '@tanstack/react-router'

export const Route = createLazyFileRoute('/')({
    component: Index,
})

function Index() {
    return (
        <>
            <div className="flex flex-col items-center justify-center">
                <div className="p-2 mt-10 text-4xl">
                    Hello! Welcome to ColdCupGenerator v0.0
                </div>
            </div>
        </>
    )
}
