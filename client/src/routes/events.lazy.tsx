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
// import { ExtendedEventCard } from '@/components/custom/expandedEventCard'
import { ErrorAlert } from '@/components/custom/errorAlert'
import RegisterDoublesForm, {
    registerDoublesFormObject,
} from '@/components/custom/registerDoublesForm'
import { useGetDoubles } from '@/hooks/useGetDoubles'
import { useToast } from '@/components/ui/use-toast'
import { EventDashboard } from '@/components/custom/eventDashboard'
import { useGetEventMatchesInfoById } from '@/hooks/useGetEventMatchesInfoById'
import { useGetEventById } from '@/hooks/useGetEventById'

export type createEventFormObject = {
    eventName: string
    categoriesIds: string
    placesIds: string
    startDate: Date
    finishDate: Date
    timeOfFirstMatch: string
    timeOfLastMatch: string
    matchDurationInMinutes: string
}

export type ErrorResponse = {
    message: string
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
    const [courtsState, setCourtsState] = useState<string[]>([])
    const { allCategories } = useGetCategories()
    const { allPlaces } = useGetPlaces()
    const { allEvents, refetchEvents } = useGetEvents()
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
                courtsIds: courtsState,
                startDate: input.startDate,
                finishDate: input.finishDate,
                timeOfFirstMatch: input.timeOfFirstMatch,
                timeOfLastMatch: input.timeOfLastMatch,
                matchDurationInMinutes: input.matchDurationInMinutes,
            }

            const data: AxiosResponse<PadelEvent> = await axios.post(
                `${import.meta.env.VITE_SERVER_URL}/events/`,
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
                    setErrorMessage('Error creating doubles')
                }
            } else {
                setError(true)
                setErrorMessage('Error creating doubles')
            }
        }
    }

    const { refetchEventMatchesInfoById } = useGetEventMatchesInfoById(
        selectedEvent?.id
    )
    const { eventById, refetchEventById } = useGetEventById(selectedEvent?.id)

    const registerDoubleOnSubmit = async (input: registerDoublesFormObject) => {
        try {
            const requestBody = {
                doublesId: input.doublesId,
                eventId: selectedEvent?.id,
            }

            const data: AxiosResponse<EventDouble> = await axios.post(
                `${import.meta.env.VITE_SERVER_URL}/events/register`,
                requestBody
            )
            registerDoublesToast(data.data.double, data.data.event)
            await refetchEventMatchesInfoById()
            await refetchEventById()
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response && axiosError.response.status === 400) {
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
            <div className="flex flex-col justify-center w-full">
                {!toggleEvent && (
                    <div className="flex flex-col items-center justify-center w-full">
                        <div className="flex flex-col w-2/3">
                            <h1 className="flex flex-row mt-2 mb-2 text-2xl font-bold">
                                Create an event
                                <img
                                    src={ball}
                                    alt="ball"
                                    className="w-8 h-8"
                                />
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
                                }}
                            />

                            {isError && (
                                <div
                                    onClick={() => setError(false)}
                                    className="mt-4"
                                >
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
                        </div>
                        {showAllEvents && (
                            <div className="flex flex-col items-center justify-center">
                                <div className="flex flex-col">
                                    {allEvents?.map((event, index) => (
                                        <div key={index} className="mt-2 ">
                                            <EventCard
                                                event={event}
                                                key={index}
                                                toggleEventOn={toggleEventOn}
                                                className="md:w-[640px] lg:w-[720px] xl:w-[860px] 2xl:w-[1024px]"
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
                )}

                {selectedEvent && toggleEvent && (
                    <div className="flex flex-col">
                        <div className="flex flex-col items-center w-full">
                            <div className="flex flex-col items-center w-full ">
                                <div className="flex flex-col items-center w-2/3 ">
                                    {selectedEvent && (
                                        <div className="flex flex-col justify-center w-full mt-2 mb-4">
                                            <h1 className="justify-center mb-4 text-3xl font-medium">
                                                🏆 {eventById?.name} 🏆
                                            </h1>
                                            <RegisterDoublesForm
                                                categoriesState={
                                                    categoriesState
                                                }
                                                eventCategories={selectedEvent.categories.map(
                                                    (cat) => cat
                                                )}
                                                onSubmit={
                                                    registerDoubleOnSubmit
                                                }
                                                setCategoriesState={
                                                    setCategoriesState
                                                }
                                                defaultValues={{
                                                    doublesId: '',
                                                }}
                                                allDoubles={allDoubles}
                                            />
                                        </div>
                                    )}
                                    {isError && (
                                        <div
                                            onClick={() => setError(false)}
                                            className="mb-4 "
                                        >
                                            <ErrorAlert
                                                message={errorMessage}
                                            />
                                        </div>
                                    )}
                                </div>
                            </div>
                        </div>
                        <EventDashboard
                            event={selectedEvent}
                            toggleEventOff={toggleEventOff}
                            refetchEvents={refetchEvents}
                        />
                    </div>
                )}
            </div>
        </>
    )
}
