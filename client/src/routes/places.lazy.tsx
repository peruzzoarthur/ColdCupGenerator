import { useToast } from '@/components/ui/use-toast'
import { Place } from '@/types/padel.types'
import { createLazyFileRoute } from '@tanstack/react-router'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { useState } from 'react'
import ball from '../styles/png/ball.png'
import { ErrorAlert } from '@/components/custom/errorAlert'
import PlaceForm, { placeFormObject } from '@/components/custom/placeForm'

export const Route = createLazyFileRoute('/places')({
    component: Places,
})

export type ErrorResponse = {
    message: string
}

type CreatePlace = {
    name: string
    address: string
}
function Places() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()

    const { toast } = useToast()

    const toasted = (place: Place) => {
        toast({
            title: 'Success! 🙌',

            description: `Created ${place.name} at ${place.address}.`,
        })
    }

    const onSubmit = async (input: placeFormObject) => {
        try {
            const requestBody: CreatePlace = {
                name: input.name,
                address: input.address,
            }

            const data: AxiosResponse<Place> = await axios.post(
                'http://localhost:3000/places/',
                requestBody
            )
            toasted(data.data)
            console.log(data)
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (
                    axiosError.response &&
                    (axiosError.response.status === 400 || 409)
                ) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                } else {
                    setError(true)
                    setErrorMessage('Error creating doubles')
                }
            } else {
                setError(true)
                setErrorMessage('Error creating doubles')
            }
        }
    }

    return (
        <>
            <div className="flex justify-center">
                <div className="flex flex-col w-2/3">
                    <h1 className="flex flex-row mt-2 mb-2 text-2xl font-bold">
                        Register Place
                        <img src={ball} alt="ball" className="w-8 h-8" />
                    </h1>
                    <div className="flex flex-col">
                        <PlaceForm
                            onSubmit={onSubmit}
                            defaultValues={{
                                name: '',
                                address: '',
                            }}
                        />
                    </div>

                    {isError && (
                        <div onClick={() => setError(false)} className="mt-4">
                            <ErrorAlert message={errorMessage} />
                        </div>
                    )}
                </div>
            </div>
        </>
    )
}
