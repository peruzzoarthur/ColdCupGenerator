import { Button } from '@/components/ui/button'
import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { Input } from '@/components/ui/input'
import { Link } from '@tanstack/react-router'
import {
    Form,
    FormControl,
    FormField,
    FormItem,
    FormLabel,
    FormMessage,
} from '@/components/ui/form'
import { z } from 'zod'
import { zodResolver } from '@hookform/resolvers/zod'
import { useForm } from 'react-hook-form'
import { useState } from 'react'
import { useToast } from '../ui/use-toast'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { ErrorResponse } from '@/types/padel.types'
import { ErrorAlert } from './errorAlert'

const loginSchema = z.object({
    email: z.string().email(),
    password: z.string().min(7).max(66),
})

type LoginInput = z.infer<typeof loginSchema>

export function LoginForm() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { toast } = useToast()

    const form = useForm<LoginInput>({
        resolver: zodResolver(loginSchema),
        defaultValues: {
            email: '',
            password: '',
        },
    })

    const onSubmit = async (input: LoginInput) => {
        try {
            const requestBody: Partial<LoginInput> = {
                email: input.email,
                password: input.password,
            }

            const data: AxiosResponse<{ accessToken: string }> =
                await axios.post(
                    `${import.meta.env.VITE_SERVER_URL}/auth/login/`,
                    requestBody
                )
            toast({
                title: 'Success',
            })
            return data //! remove this return
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (
                    axiosError.response
                    // &&
                    // (axiosError.response.status === 400 || 401)
                ) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
                // else {
                //     setError(true)
                //     setErrorMessage('Error creating place.')
                // }
            } else {
                setError(true)
                setErrorMessage('Error at login.')
            }
        }
    }
    return (
        <div className="absolute -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2">
            <Card className="max-w-sm mx-auto">
                <CardHeader>
                    <CardTitle className="text-2xl">Login</CardTitle>
                    <CardDescription>
                        Enter your email below to login to your account
                    </CardDescription>
                </CardHeader>
                <CardContent>
                    <Form {...form}>
                        <form
                            onSubmit={form.handleSubmit(onSubmit)}
                            className="relative space-y-3 overflow-x-hidden"
                        >
                            <div className="grid gap-4">
                                <div className="grid gap-2">
                                    {/* email */}
                                    <FormField
                                        control={form.control}
                                        name="email"
                                        render={({ field }) => (
                                            <FormItem>
                                                <FormLabel>Email</FormLabel>
                                                <FormControl>
                                                    <Input
                                                        placeholder="Enter your email..."
                                                        {...field}
                                                    />
                                                </FormControl>
                                                <FormMessage />
                                            </FormItem>
                                        )}
                                    />
                                </div>
                                <div className="grid gap-2">
                                    <div className="flex items-center">
                                        <Link
                                            to="/"
                                            href="#"
                                            className="inline-block ml-auto text-sm underline"
                                        >
                                            Forgot your password?
                                        </Link>
                                    </div>
                                    {/* password */}
                                    <FormField
                                        control={form.control}
                                        name="password"
                                        render={({ field }) => (
                                            <FormItem>
                                                <FormLabel>Password</FormLabel>
                                                <FormControl>
                                                    <Input
                                                        placeholder="Enter your password..."
                                                        {...field}
                                                        type="password"
                                                    />
                                                </FormControl>
                                                <FormMessage />
                                            </FormItem>
                                        )}
                                    />
                                </div>
                                {/* <div className="flex gap-2">
                            <Button type="submit">Submit</Button>
                        </div> */}
                                <Button type="submit" className="w-full">
                                    Login
                                </Button>
                            </div>
                            <div className="mt-4 text-sm text-center">
                                Don&apos;t have an account?{' '}
                                <Link
                                    to="/register"
                                    href="#"
                                    className="underline"
                                >
                                    Sign up
                                </Link>
                            </div>
                        </form>
                    </Form>
                </CardContent>
            </Card>
            {isError && (
                <div onClick={() => setError(false)} className="mt-4">
                    <ErrorAlert message={errorMessage} />
                </div>
            )}
        </div>
    )
}
