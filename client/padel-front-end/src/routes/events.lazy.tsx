import { createLazyFileRoute } from '@tanstack/react-router'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { useGetCategories } from '@/hooks/useGetCategories'
import EventForm from '@/components/custom/eventForm'
import { useState } from 'react'
import { useGetPlaces } from '@/hooks/useGetPlaces'
import { useGetEvents } from '@/hooks/useGetEvents'
import { EventCard } from '@/components/custom/eventCard'
import { Button } from '@/components/ui/button'
import ball from '../styles/png/ball.png'
import { Double, EventDouble, PadelEvent } from '@/types/padel.types'
import { ExtendedEventCard } from '@/components/custom/expandedEventCard'
import { ErrorAlert } from '@/components/custom/errorAlert'
import RegisterDoublesForm, {
    registerDoublesFormObject,
} from '@/components/custom/registerDoublesForm'
import { useGetDoubles } from '@/hooks/useGetDoubles'
import { useToast } from '@/components/ui/use-toast'

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
    const { toast } = useToast()

    const createEventToast = (event: PadelEvent) => {
        toast({
            title: 'Success! 🙌',

            description: `Created Event ${event.name} at ${event.places.map((p) => p.name).join(', ')} with categories: ${event.categories.map((c) => `${c.level} ${c.type}`).join(', ')}.`,
            // className: 'bg-emerald-600 bg-opacity-60 text-white',
        })
    }

    const registerDoublesToast = (
        double: Double | undefined,
        event: PadelEvent | undefined
    ) => {
        toast({
            title: 'Success! 🙌',
            description: `Registered doubles ${double?.players.map((p) => `${p.firstName} ${p.lastName}`).join(', ')} at event ${event?.name}`,
        })
    }

    const allEventsOn = () => {
        setShowAllEvents(true)
    }

    const allEventsOff = () => {
        setShowAllEvents(false)
    }

    const toggleEventOn = async (event: PadelEvent) => {
        setSelectedEvent(event)
        setToggleEvent(true)
    }

    const toggleEventOff = async () => {
        setToggleEvent(false)
    }

    const createEventOnSubmit = async (input: createEventFormObject) => {
        try {
            const requestBody = {
                name: input.eventName,
                categoriesIds: categoriesState,
                placesIds: placesState,
            }

            const data: AxiosResponse<PadelEvent> = await axios.post(
                'http://localhost:3000/events/',
                requestBody
            )

            createEventToast(data.data)
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

            const data: AxiosResponse<EventDouble> = await axios.post(
                'http://localhost:3000/events/register',
                requestBody
            )
            registerDoublesToast(data.data.double, data.data.event)
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
            <div className="flex justify-center w-full">
                {!toggleEvent && (
                    <div className="flex justify-center w-full">
                        <div className="flex flex-col w-2/3">
                            <h1 className="flex flex-row mt-2 mb-2 text-2xl font-bold">
                                Create an event
                                <img
                                    src={ball}
                                    alt="ball"
                                    className="w-8 h-8"
                                />
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
                                    <div className="flex flex-col justify-end">
                                        {allEvents?.map((event, index) => (
                                            <div key={index} className="mt-2 ">
                                                <EventCard
                                                    event={event}
                                                    key={index}
                                                    toggleEventOn={
                                                        toggleEventOn
                                                    }
                                                />
                                            </div>
                                        ))}
                                    </div>
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
                    <div className="flex flex-col w-4/5">
                        <div className="flex flex-col justify-center ">
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
                                {selectedEvent && toggleEvent && (
                                    <ExtendedEventCard
                                        event={selectedEvent}
                                        toggleEventOff={toggleEventOff}
                                    />
                                )}
                            </div>
                        </div>
                    </div>
                )}
            </div>
        </>
    )
}
