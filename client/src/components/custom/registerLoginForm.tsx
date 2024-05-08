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
import React from 'react'
import { cn } from '@/lib/utils'
import { ArrowRight } from 'lucide-react'
import { useToast } from '@/components/ui/use-toast'

type Input = z.infer<typeof registerSchema>

export default function RegisterLoginForm() {
    const { toast } = useToast()
    const [formStep, setFormStep] = React.useState(0)
    const form = useForm<Input>({
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

    function onSubmit(data: Input) {
        if (data.confirmPassword !== data.password) {
            toast({
                title: 'Passwords do not match',
                variant: 'destructive',
            })
            return
        }
        alert(JSON.stringify(data, null, 4))
        console.log(data)
    }

    return (
        <div className="absolute -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2">
            <Card className="w-[350px]">
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
        </div>
    )
}

{
    /* <div className="mt-4 text-sm text-center">
                    Already have an account?{' '}
                    <Link to="/login" href="#" className="underline">
                        Sign in
                    </Link>
                </div> */
}
