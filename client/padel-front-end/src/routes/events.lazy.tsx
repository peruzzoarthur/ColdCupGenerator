import { createLazyFileRoute } from '@tanstack/react-router'
import axios, { AxiosError } from 'axios'
import { useGetCategories } from '@/hooks/useGetCategories'
import EventForm from '@/components/custom/eventForm'
import { useState } from 'react'
import { useGetPlaces } from '@/hooks/useGetPlaces'
import { useGetEvents } from '@/hooks/useGetEvents'
import { EventCard } from '@/components/custom/eventCard'
import { Button } from '@/components/ui/button'
import ball from '../styles/png/ball.png'
import { PadelEvent } from '@/types/padel.types'
import { ExtendedEventCard } from '@/components/custom/expandedEventCard'
import { ErrorAlert } from '@/components/custom/errorAlert'
import RegisterDoublesForm, {
    registerDoublesFormObject,
} from '@/components/custom/registerDoublesForm'
import { useGetDoubles } from '@/hooks/useGetDoubles'

type createEventFormObject = {
    eventName: string
    categoriesIds: string
    placesIds: string
}

export type ErrorResponse = {
    message: string[]
}

export const Route = createLazyFileRoute('/events')({
    component: Events,
})

function Events() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const [showAllEvents, setShowAllEvents] = useState<boolean>(false)
    const [selectedEvent, setSelectedEvent] = useState<PadelEvent | undefined>()
    const [toggleEvent, setToggleEvent] = useState<boolean>(false)
    const [categoriesState, setCategoriesState] = useState<string[]>([])
    const [placesState, setPlacesState] = useState<string[]>([])
    const { allCategories } = useGetCategories()
    const { allPlaces } = useGetPlaces()
    const { allEvents } = useGetEvents()
    const { allDoubles } = useGetDoubles()

    const allEventsOn = () => {
        setShowAllEvents(true)
    }

    const allEventsOff = () => {
        setShowAllEvents(false)
    }

    const toggleEventOn = (event: PadelEvent) => {
        setToggleEvent(true)
        setSelectedEvent(event)
    }

    const toggleEventOff = () => {
        setToggleEvent(false)
    }

    const createEventOnSubmit = async (input: createEventFormObject) => {
        try {
            const requestBody = {
                name: input.eventName,
                categoriesIds: categoriesState,
                placesIds: placesState,
            }

            const data = await axios.post(
                'http://localhost:3000/events/',
                requestBody
            )

            console.log(data)
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response && axiosError.response.status === 400) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message.join(', '))
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

    const registerDoubleOnSubmit = async (input: registerDoublesFormObject) => {
        try {
            const requestBody = {
                doublesId: input.doublesId,
                eventId: selectedEvent?.id,
            }
            console.log('aaaaaaaa')

            const data = await axios.post(
                'http://localhost:3000/events/register',
                requestBody
            )

            console.log(data)
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response && axiosError.response.status === 400) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message.join(', '))
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
            {!toggleEvent && (
                <div className="flex justify-center">
                    <div className="flex flex-col w-2/3">
                        <h1 className="flex flex-row mt-2 mb-2 text-2xl font-bold">
                            Create an event
                            <img src={ball} alt="ball" className="w-8 h-8" />
                        </h1>
                        <div className="flex flex-col">
                            <EventForm
                                allPlaces={allPlaces}
                                allCategories={allCategories}
                                onSubmit={createEventOnSubmit}
                                categoriesState={categoriesState}
                                setCategoriesState={setCategoriesState}
                                placesState={placesState}
                                setPlacesState={setPlacesState}
                                defaultValues={{
                                    eventName: '',
                                    categoriesIds: '',
                                    placesIds: '',
                                }}
                            />
                        </div>

                        {isError && (
                            <div className="mt-4">
                                <ErrorAlert message={errorMessage} />
                            </div>
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
                            <div className="flex flex-col justify-center">
                                {allEvents?.map((event, index) => (
                                    <div
                                        key={index}
                                        className="justify-between w-1/3 mt-2"
                                    >
                                        <EventCard
                                            event={event}
                                            key={index}
                                            toggleEventOn={toggleEventOn}
                                        />
                                    </div>
                                ))}
                                <Button
                                    onClick={allEventsOff}
                                    className="mt-12"
                                >
                                    Close
                                </Button>
                            </div>
                        )}
                    </div>
                </div>
            )}
            {toggleEvent && (
                <div className="flex flex-col ">
                    {selectedEvent && (
                        <div className="flex flex-col justify-center mt-2 mb-4">
                            <RegisterDoublesForm
                                categoriesState={categoriesState}
                                eventCategories={selectedEvent.categories.map(
                                    (cat) => cat
                                )}
                                onSubmit={registerDoubleOnSubmit}
                                setCategoriesState={setCategoriesState}
                                defaultValues={{
                                    doublesId: '',
                                }}
                                allDoubles={allDoubles}
                            />
                        </div>
                    )}
                    <div className="flex justify-center">
                        <ExtendedEventCard
                            event={selectedEvent}
                            toggleEventOff={toggleEventOff}
                        />
                    </div>
                </div>
            )}
        </>
    )
}
