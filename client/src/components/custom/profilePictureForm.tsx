import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'

import { useState } from 'react'
import { useToast } from '../ui/use-toast'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { ErrorResponse, User } from '@/types/padel.types'
import { ErrorAlert } from './errorAlert'
import { axiosInstance } from '@/axiosInstance'
import { Input } from '../ui/input'
import { Label } from '../ui/label'
import { Button } from '../ui/button'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'

// const profileSchema = z.object({
//     file: z.string(),
//     test: z.string(),
// })

// type ProfileInput = z.infer<typeof profileSchema>

type ProfilePictureFormProps = {
    refetchUser: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<User | null, Error>>
}
export function ProfilePictureForm({ refetchUser }: ProfilePictureFormProps) {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { toast } = useToast()

    const [file, setFile] = useState<File | null>(null)
    // const [error, setError] = useState(null)

    const handleFileChange = (event: React.ChangeEvent<HTMLInputElement>) => {
        if (event.target.files && event.target.files.length > 0) {
            setFile(event.target.files[0])
        }
    }

    const handleSubmit = async (event: React.FormEvent<HTMLFormElement>) => {
        event.preventDefault()
        if (!file) {
            setError(true)
            return
        }

        const formData = new FormData()
        formData.append('file', file)

        try {
            const data: AxiosResponse<{
                user: User
            }> = await axiosInstance.patch('users/profile-image', formData, {
                headers: {
                    'Content-Type': 'multipart/form-data',
                },
            })

            toast({
                title: 'Success uploading photo',
            })

            await refetchUser()
            return data
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
                setErrorMessage('Error updating profile picture.')
            }
        }
    }

    return (
        <div className="flex mt-6">
            <Card className="max-w-sm mx-auto min-w-[320px]">
                <CardHeader>
                    <CardTitle className="text-xl">
                        Upload profile picture 📷
                    </CardTitle>
                </CardHeader>
                <CardContent>
                    <div>
                        <form onSubmit={handleSubmit}>
                            <div className="flex flex-col items-end space-y-2">
                                <Input
                                    className="bg-white cursor-pointer bg-opacity-40"
                                    type="file"
                                    accept="image/jpeg"
                                    onChange={handleFileChange}
                                />
                                <Button className="w-1/3" type="submit">
                                    Upload
                                </Button>
                            </div>
                        </form>
                    </div>
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

// {/* <Form {...form}>
//                         <form
//                             onSubmit={form.handleSubmit(onSubmit)}
//                             className="relative space-y-3 overflow-x-hidden"
//                         >
//                             <div className="grid gap-4">
//                                 <div className="grid gap-2">
//                                     {/* email */}
//                                     <FormField
//                                         control={form.control}
//                                         name="file"
//                                         render={({ field }) => (
//                                             <FormItem>
//                                                 <FormLabel>
//                                                     Select file
//                                                 </FormLabel>
//                                                 <FormControl>
//                                                     <Input
//                                                         className="bg-white bg-opacity-10"
//                                                         type="file"
//                                                         placeholder="Select file"
//                                                         {...field}
//                                                     />
//                                                 </FormControl>
//                                                 <FormMessage />
//                                             </FormItem>
//                                         )}
//                                     />
//                                 </div>

//                                 <Button type="submit" className="w-full">
//                                     Upload
//                                 </Button>
//                             </div>
//                         </form>
//                     </Form> */}
