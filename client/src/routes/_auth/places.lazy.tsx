import { useToast } from '@/components/ui/use-toast'
import { Place } from '@/types/padel.types'
import { createLazyFileRoute } from '@tanstack/react-router'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { useState } from 'react'
import { ErrorAlert } from '@/components/custom/errorAlert'
import PlaceForm, { placesFormObject } from '@/components/custom/placeForm'
import { axiosInstance } from '@/axiosInstance'
import { Tent } from 'lucide-react'
import { twMerge } from 'tailwind-merge'
import { Button } from '@/components/ui/button'
import { useGetPlaces } from '@/hooks/useGetPlaces'
import { PlacesTable } from '@/components/custom/placesTable/placesTable'
import {
    PlacesTableProps,
    placesColumns,
} from '@/components/custom/placesTable/placesTableColumns'

export const Route = createLazyFileRoute('/_auth/places')({
    component: Places,
})

export type ErrorResponse = {
    message: string
}

type CreatePlace = {
    name: string
    address: string
    courts: string
}
function Places() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const [courtsState, setCourtsState] = useState<string[]>([])
    const [showAllPlaces, setShowAllPlaces] = useState<boolean>(false)
    const { allPlaces, refetchAllPlaces } = useGetPlaces()
    const { toast } = useToast()

    const toasted = (place: Place) => {
        toast({
            title: 'Success! 🙌',

            description: `Created ${place.name} at ${place.address}.`,
        })
    }

    const allPlacesOn = () => {
        setShowAllPlaces(true)
    }

    const allPlacesOff = () => {
        setShowAllPlaces(false)
    }

    const onSubmit = async (input: placesFormObject) => {
        try {
            const requestBody: CreatePlace = {
                name: input.name,
                address: input.address,
                courts: courtsState.join(','),
            }

            const data: AxiosResponse<Place> = await axiosInstance.post(
                '/places/',
                requestBody
            )
            await refetchAllPlaces()
            toasted(data.data)
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
                    setErrorMessage('Error creating place.')
                }
            } else {
                setError(true)
                setErrorMessage('Error creating place.')
            }
        }
    }

    const placesTableData: PlacesTableProps[] | undefined = allPlaces?.map(
        (place) => {
            return {
                id: place.id,
                name: place.name,
                address: place.address,
                courts: place.courts,
            }
        }
    )

    return (
        <div className="flex flex-col justify-center w-11/12 space-y-4">
            <h1 className="flex flex-row items-center mt-2 mb-2 text-2xl font-bold">
                Register Place
                <Tent className="w-5 h-5 ml-2" />
            </h1>
            <div className="grid grid-cols-1 space-y-2 md:grid-cols-3 md:space-y-0 justify-items-center">
                <div
                    className={twMerge(
                        'flex flex-col',
                        showAllPlaces
                            ? 'col-span-1 w-full'
                            : 'col-span-3 w-full sm:w-11/12 md:w-9/12 lg:w-7/12 '
                    )}
                >
                    <PlaceForm
                        onSubmit={onSubmit}
                        defaultValues={{
                            name: '',
                            address: '',
                            courts: '',
                        }}
                        courtsState={courtsState}
                        setCourtsState={setCourtsState}
                    />
                    {showAllPlaces ? (
                        <Button
                            className="mt-2"
                            variant="secondary"
                            onClick={allPlacesOff}
                        >
                            Close
                        </Button>
                    ) : (
                        <Button
                            onClick={allPlacesOn}
                            className="mt-4"
                            variant="secondary"
                        >
                            Show all places
                        </Button>
                    )}
                    {isError && (
                        <div onClick={() => setError(false)} className="mt-4">
                            <ErrorAlert message={errorMessage} />
                        </div>
                    )}
                </div>
                {showAllPlaces && allPlaces && placesTableData && (
                    <div className="flex flex-col items-center w-full col-span-2 p-2">
                        <PlacesTable
                            columns={placesColumns}
                            data={placesTableData}
                        />
                    </div>
                )}
            </div>
        </div>
    )
}
