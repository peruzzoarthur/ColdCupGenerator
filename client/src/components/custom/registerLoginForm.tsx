import { Button } from '@/components/ui/button'
import {
    Form,
    FormControl,
    FormField,
    FormItem,
    FormLabel,
    FormMessage,
} from '@/components/ui/form'
import { motion } from 'framer-motion'
import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
// import {
//     Select,
//     SelectContent,
//     SelectItem,
//     SelectTrigger,
//     SelectValue,
// } from '@/components/ui/select'

import { Input } from '@/components/ui/input'
import { useForm } from 'react-hook-form'
import { registerSchema } from '@/components/validators/register'
import { z } from 'zod'
import { zodResolver } from '@hookform/resolvers/zod'
import React, { useState } from 'react'
import { cn } from '@/lib/utils'
import { ArrowRight } from 'lucide-react'
import { useToast } from '@/components/ui/use-toast'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { ErrorResponse, User } from '@/types/padel.types'
import { ErrorAlert } from './errorAlert'

type RegisterInput = z.infer<typeof registerSchema>

export default function RegisterLoginForm() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { toast } = useToast()
    const [formStep, setFormStep] = React.useState(0)
    const form = useForm<RegisterInput>({
        resolver: zodResolver(registerSchema),
        defaultValues: {
            firstName: '',
            lastName: '',
            email: '',
            dob: '',
            password: '',
            confirmPassword: '',
        },
    })

    const onSubmit = async (input: RegisterInput) => {
        try {
            const requestBody: Partial<RegisterInput> = {
                firstName: input.firstName,
                lastName: input.lastName,
                email: input.email,
                dob: input.dob,
                password: input.password,
                confirmPassword: input.confirmPassword,
            }

            if (input.confirmPassword !== input.password) {
                toast({
                    title: 'Passwords do not match',
                    variant: 'destructive',
                })
                return
            }
            alert(JSON.stringify(input, null, 4))

            const data: AxiosResponse<User> = await axios.post(
                `${import.meta.env.VITE_SERVER_URL}/users/`,
                requestBody
            )
            toast({
                title: 'Success',
            })
            return data.data
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response && axiosError.response.status === 409) {
                    setError(true)
                    setErrorMessage('Email already in use.')
                }
            } else {
                setError(true)
                setErrorMessage('Error creating user.')
            }
        }
    }

    return (
        <div className="flex justify-center mt-20">
            <Card className="min-w-[380px]">
                <CardHeader>
                    <CardTitle>Register</CardTitle>
                    <CardDescription>
                        Start playing with us today.
                    </CardDescription>
                </CardHeader>
                <CardContent>
                    <Form {...form}>
                        <form
                            onSubmit={form.handleSubmit(onSubmit)}
                            className="relative space-y-3 overflow-x-hidden"
                        >
                            <motion.div
                                className={cn('space-y-3', {
                                    // hidden: formStep == 1,
                                })}
                                // formStep == 0 -> translateX == 0
                                // formStep == 1 -> translateX == '-100%'
                                animate={{
                                    translateX: `-${formStep * 100}%`,
                                }}
                                transition={{
                                    ease: 'easeInOut',
                                }}
                            >
                                {/* firstName */}
                                <FormField
                                    control={form.control}
                                    name="firstName"
                                    render={({ field }) => (
                                        <FormItem>
                                            <FormLabel>First name</FormLabel>
                                            <FormControl>
                                                <Input
                                                    placeholder="Enter your first name..."
                                                    {...field}
                                                />
                                            </FormControl>

                                            <FormMessage />
                                        </FormItem>
                                    )}
                                />

                                {/* lastName */}
                                <FormField
                                    control={form.control}
                                    name="lastName"
                                    render={({ field }) => (
                                        <FormItem>
                                            <FormLabel>Last name</FormLabel>
                                            <FormControl>
                                                <Input
                                                    placeholder="Enter your last name..."
                                                    {...field}
                                                />
                                            </FormControl>

                                            <FormMessage />
                                        </FormItem>
                                    )}
                                />
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
                                {/* year */}
                                <FormField
                                    control={form.control}
                                    name="dob"
                                    render={({ field }) => (
                                        <FormItem>
                                            <FormLabel>Date of birth</FormLabel>
                                            <FormControl>
                                                <Input
                                                    placeholder="Enter your DOB..."
                                                    {...field}
                                                />
                                            </FormControl>
                                            <FormMessage />
                                        </FormItem>
                                    )}
                                />
                            </motion.div>
                            <motion.div
                                className={cn(
                                    'space-y-3 absolute top-0 left-0 right-0',
                                    {
                                        // hidden: formStep == 0,
                                    }
                                )}
                                // formStep == 0 -> translateX == 100%
                                // formStep == 1 -> translateX == 0
                                animate={{
                                    translateX: `${100 - formStep * 100}%`,
                                }}
                                style={{
                                    translateX: `${100 - formStep * 100}%`,
                                }}
                                transition={{
                                    ease: 'easeInOut',
                                }}
                            >
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
                                {/* confirm password */}
                                <FormField
                                    control={form.control}
                                    name="confirmPassword"
                                    render={({ field }) => (
                                        <FormItem>
                                            <FormLabel>
                                                Confirm password
                                            </FormLabel>
                                            <FormControl>
                                                <Input
                                                    placeholder="Please confirm your password..."
                                                    {...field}
                                                    type="password"
                                                />
                                            </FormControl>
                                            <FormMessage />
                                        </FormItem>
                                    )}
                                />
                            </motion.div>
                            <div className="flex gap-2">
                                <Button
                                    type="submit"
                                    className={cn({
                                        hidden: formStep == 0,
                                    })}
                                >
                                    Submit
                                </Button>
                                <Button
                                    type="button"
                                    variant={'ghost'}
                                    className={cn({
                                        hidden: formStep == 1,
                                    })}
                                    onClick={() => {
                                        // validation
                                        form.trigger([
                                            'email',
                                            'firstName',
                                            'dob',
                                            'lastName',
                                        ])
                                        const emailState =
                                            form.getFieldState('email')
                                        const firstNameState =
                                            form.getFieldState('firstName')
                                        const dobState =
                                            form.getFieldState('dob')
                                        const lastNameState =
                                            form.getFieldState('lastName')

                                        if (
                                            !emailState.isDirty ||
                                            emailState.invalid
                                        )
                                            return
                                        if (
                                            !firstNameState.isDirty ||
                                            lastNameState.invalid
                                        )
                                            return
                                        if (
                                            !dobState.isDirty ||
                                            dobState.invalid
                                        )
                                            return
                                        if (
                                            !lastNameState.isDirty ||
                                            lastNameState.invalid
                                        )
                                            return

                                        setFormStep(1)
                                    }}
                                >
                                    Next Step
                                    <ArrowRight className="w-4 h-4 ml-2" />
                                </Button>
                                <Button
                                    type="button"
                                    variant={'ghost'}
                                    onClick={() => {
                                        setFormStep(0)
                                    }}
                                    className={cn({
                                        hidden: formStep == 0,
                                    })}
                                >
                                    Go Back
                                </Button>
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
