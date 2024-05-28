import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'

import React, { useState } from 'react'
import { useForm } from 'react-hook-form'
import { z } from 'zod'
import { zodResolver } from '@hookform/resolvers/zod'
import { Button } from '@/components/ui/button'
import {
    Form,
    FormControl,
    FormField,
    FormItem,
    FormLabel,
    FormMessage,
} from '@/components/ui/form'
import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '../ui/select'
import { useGetCategories } from '@/hooks/useGetCategories'
import { ErrorResponse, User } from '@/types/padel.types'
import { useToast } from '../ui/use-toast'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { axiosInstance } from '@/axiosInstance'
import { ErrorAlert } from './errorAlert'
import { XIcon } from 'lucide-react'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'

type SignInAsPlayerFormProps = {
    defaultValues: sigInAsPlayerFormObject
    user: User | null | undefined
    setEditPlayerForm: (value: React.SetStateAction<boolean>) => void
    refetchUser: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<User | null, Error>>
}

export type sigInAsPlayerFormObject = {
    categoryId: string
    position: string
    firstName: string
    lastName: string
}

const formSchema = z.object({
    categoryId: z.string(),
    position: z.string(),
    firstName: z.string(),
    lastName: z.string(),
})

type SignInAsPlayerInput = z.infer<typeof formSchema>

export const SignInAsPlayerForm: React.FC<SignInAsPlayerFormProps> = ({
    defaultValues,
    user,
    setEditPlayerForm,
    refetchUser,
}) => {
    const [isError, setError] = useState<boolean>(false)

    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { toast } = useToast()
    const form = useForm({
        resolver: zodResolver(formSchema),
        defaultValues: defaultValues,
    })

    const { handleSubmit } = form
    const { allCategories } = useGetCategories()
    const onSubmit = async (input: SignInAsPlayerInput) => {
        try {
            const requestBody: Partial<SignInAsPlayerInput> = {
                firstName: user?.firstName,
                lastName: user?.lastName,
                categoryId: input.categoryId,
                position: input.position,
            }

            const data: AxiosResponse<User> = await axiosInstance.post(
                '/users/connect-to-player',
                requestBody
            )
            toast({
                title: 'Success',
            })
            await refetchUser()
            setEditPlayerForm(false)
            return data.data
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
            } else {
                setError(true)
                setErrorMessage('Error connecting user to player.')
            }
        }
    }

    return (
        <div className="flex mt-6">
            <Card className="max-w-sm mx-auto min-w-[320px]">
                <div className="flex justify-end">
                    <Button
                        variant="ghost"
                        className="justify-center mt-2 rounded-full cursor-pointer h-11 w-11"
                        onClick={() => setEditPlayerForm(false)}
                    >
                        <XIcon />
                    </Button>
                </div>
                <CardHeader>
                    <CardTitle className="text-xl">
                        Choose category and position
                    </CardTitle>
                </CardHeader>
                <CardContent>
                    <div>
                        <Form {...form}>
                            <FormField
                                control={form.control}
                                name="categoryId"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Category</FormLabel>
                                        <Select
                                            onValueChange={field.onChange}
                                            defaultValue={field.value}
                                        >
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Select a category" />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                <SelectGroup>
                                                    <SelectLabel>
                                                        ALL
                                                    </SelectLabel>
                                                    {allCategories?.map(
                                                        (c, index) => (
                                                            <SelectItem
                                                                value={c.id}
                                                                key={index}
                                                            >
                                                                {c.level}
                                                            </SelectItem>
                                                        )
                                                    )}
                                                </SelectGroup>
                                            </SelectContent>
                                        </Select>

                                        <FormMessage />
                                    </FormItem>
                                )}
                            />

                            <FormField
                                control={form.control}
                                name="position"
                                render={({ field }) => (
                                    <FormItem>
                                        <FormLabel>Position</FormLabel>
                                        <Select
                                            onValueChange={field.onChange}
                                            defaultValue={field.value}
                                        >
                                            <FormControl>
                                                <SelectTrigger>
                                                    <SelectValue placeholder="Select a position" />
                                                </SelectTrigger>
                                            </FormControl>
                                            <SelectContent>
                                                <SelectGroup>
                                                    <SelectLabel>
                                                        Position
                                                    </SelectLabel>
                                                    <SelectItem value="REVES">
                                                        REVES
                                                    </SelectItem>
                                                    <SelectItem value="DRIVE">
                                                        DRIVE
                                                    </SelectItem>
                                                </SelectGroup>
                                            </SelectContent>
                                        </Select>

                                        <FormMessage />
                                    </FormItem>
                                )}
                            />

                            <div className="flex justify-center mt-2">
                                <Button
                                    className="w-full bg-opacity-65"
                                    onClick={handleSubmit(onSubmit)}
                                    type="button"
                                >
                                    Connect
                                </Button>
                            </div>
                            {isError && (
                                <div
                                    onClick={() => setError(false)}
                                    className="mt-4"
                                >
                                    <ErrorAlert message={errorMessage} />
                                </div>
                            )}
                        </Form>
                    </div>
                </CardContent>
            </Card>
        </div>
    )
}
