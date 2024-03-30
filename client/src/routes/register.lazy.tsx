import { RegisterLoginForm } from '@/components/custom/registerLoginForm'
import { createLazyFileRoute } from '@tanstack/react-router'

export const Route = createLazyFileRoute('/register')({
    component: Register,
})

function Register() {
    return (
        <>
            <div className="flex flex-col items-center justify-center mt-6">
                <RegisterLoginForm />
            </div>
        </>
    )
}
