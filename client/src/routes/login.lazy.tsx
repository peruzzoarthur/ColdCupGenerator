import { LoginForm } from '@/components/custom/loginForm'
import { createLazyFileRoute } from '@tanstack/react-router'

export const Route = createLazyFileRoute('/login')({
    component: Login,
})

function Login() {
    return <LoginForm />
}
