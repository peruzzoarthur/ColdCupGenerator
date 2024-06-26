import EventForm from '@/components/custom/eventForm'
import { useState } from 'react'
import { useGetPlaces } from '@/hooks/useGetPlaces'
import { useGetEvents } from '@/hooks/useGetEvents'
import { EventCard } from '@/components/custom/eventCard'
import { Button } from '@/components/ui/button'
import ball from '../../../styles/png/ball.png'
import { EventType, PadelEvent } from '@/types/padel.types'
import { useToast } from '@/components/ui/use-toast'
import { axiosInstance } from '@/axiosInstance'
import { createLazyFileRoute } from '@tanstack/react-router'
import { useGetCategories } from '@/hooks/useGetCategories'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { useGetRole } from '@/hooks/useGetRole'
import { ErrorBox } from '@/components/custom/errorBox'

export type createEventFormObject = {
    eventName: string
    categoriesIds: string
    placesIds: string
    startDate: Date
    finishDate: Date
    timeOfFirstMatch: string
    timeOfLastMatch: string
    matchDurationInMinutes: string
    eventType: EventType
}

export type ErrorResponse = {
    message: string
}

export const Route = createLazyFileRoute('/_auth/events/')({
    component: Events,
})

function Events() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const [showAllEvents, setShowAllEvents] = useState<boolean>(false)
    const [categoriesState, setCategoriesState] = useState<string[]>([])
    const [placesState, setPlacesState] = useState<string[]>([])
    const [courtsState, setCourtsState] = useState<string[]>([])
    const { allCategories } = useGetCategories()
    const { allPlaces } = useGetPlaces()
    const { allEvents, refetchEvents } = useGetEvents()
    const { toast } = useToast()
    const { role } = useGetRole()

    const createEventToast = (event: PadelEvent) => {
        toast({
            title: 'Success! 🙌',
            description: `Created Event ${event.name} at ${event.places.map((p) => p.name).join(', ')} with categories: ${event.categories.map((c) => `${c.level} ${c.type}`).join(', ')}.`,
        })
    }

    const allEventsOn = () => {
        setShowAllEvents(true)
    }

    const allEventsOff = () => {
        setShowAllEvents(false)
    }

    const createEventOnSubmit = async (input: createEventFormObject) => {
        try {
            const requestBody = {
                name: input.eventName,
                categoriesIds: categoriesState,
                placesIds: placesState,
                courtsIds: courtsState,
                startDate: input.startDate,
                finishDate: input.finishDate,
                timeOfFirstMatch: input.timeOfFirstMatch,
                timeOfLastMatch: input.timeOfLastMatch,
                matchDurationInMinutes: input.matchDurationInMinutes,
                eventType: input.eventType,
            }
            const data: AxiosResponse<PadelEvent> = await axiosInstance.post(
                '/events/',
                requestBody
            )

            createEventToast(data.data)

            refetchEvents()
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response && axiosError.response.status === 400) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                } else {
                    setError(true)
                    console.error(error)
                    setErrorMessage('Error creating event')
                }
            } else {
                setError(true)
                console.error(error)

                setErrorMessage('Error creating event')
            }
        }
    }

    return (
        <>
            <div className="flex flex-col items-center justify-center w-full">
                {role === 'ADMIN' && (
                    <div className="flex flex-col w-2/3">
                        <h1 className="flex flex-row mt-2 mb-2 text-2xl font-bold">
                            Create an event
                            <img src={ball} alt="ball" className="w-8 h-8" />
                        </h1>
                        <EventForm
                            allPlaces={allPlaces}
                            allCategories={allCategories}
                            onSubmit={createEventOnSubmit}
                            categoriesState={categoriesState}
                            setCategoriesState={setCategoriesState}
                            placesState={placesState}
                            setPlacesState={setPlacesState}
                            courtsState={courtsState}
                            setCourtsState={setCourtsState}
                            defaultValues={{
                                eventName: '',
                                categoriesIds: '',
                                placesIds: '',
                                startDate: '' as unknown as Date,
                                finishDate: '' as unknown as Date,
                                matchDurationInMinutes: '',
                                timeOfFirstMatch: '',
                                timeOfLastMatch: '',
                                eventType: EventType.ALLxALL,
                            }}
                        />

                        {isError && (
                            <ErrorBox
                                errorMessage={errorMessage}
                                setError={setError}
                            />
                        )}

                        {!showAllEvents && (
                            <Button
                                onClick={() => allEventsOn()}
                                className="mt-12"
                            >
                                Show all events
                            </Button>
                        )}

                        {showAllEvents && (
                            <div className="flex flex-col items-center justify-center w-full mt-4 space-y-2">
                                <h1 className="flex flex-row mt-2 mb-2 text-2xl font-bold">
                                    Events
                                    <img
                                        src={ball}
                                        alt="ball"
                                        className="w-8 h-8"
                                    />
                                </h1>
                                {allEvents?.map((event, index) => (
                                    <EventCard
                                        event={event}
                                        key={index}
                                        className="w-full"
                                    />
                                ))}
                                <Button onClick={allEventsOff}>Close</Button>
                            </div>
                        )}
                    </div>
                )}

                {role === 'USER' && (
                    <div className="flex flex-col items-center justify-center w-2/3 mt-4 space-y-2">
                        <h1 className="flex flex-row mt-2 mb-2 text-2xl font-bold">
                            Events
                            <img src={ball} alt="ball" className="w-8 h-8" />
                        </h1>
                        {allEvents?.map((event, index) => (
                            <EventCard
                                event={event}
                                key={index}
                                className="w-full"
                            />
                        ))}
                        <Button onClick={allEventsOff}>Close</Button>
                    </div>
                )}
            </div>
        </>
    )
}
