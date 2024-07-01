import EventForm from '@/components/custom/eventForm'
import { useState } from 'react'
import { useGetPlaces } from '@/hooks/useGetPlaces'
import { useGetEvents } from '@/hooks/useGetEvents'
import { EventCard } from '@/components/custom/eventCard'
import { EventType, PadelEvent } from '@/types/padel.types'
import { useToast } from '@/components/ui/use-toast'
import { axiosInstance } from '@/axiosInstance'
import { createLazyFileRoute } from '@tanstack/react-router'
import { useGetCategories } from '@/hooks/useGetCategories'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { useGetRole } from '@/hooks/useGetRole'
import { ErrorBox } from '@/components/custom/errorBox'
import { ScrollArea } from '@/components/ui/scroll-area'
import { EventsFiltersCard } from '@/components/custom/eventsFiltersCard'
import { CalendarDays } from 'lucide-react'

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
    const [categoriesState, setCategoriesState] = useState<string[]>([])
    const [placesState, setPlacesState] = useState<string[]>([])
    const [courtsState, setCourtsState] = useState<string[]>([])
    const { allCategories } = useGetCategories()
    const { allPlaces } = useGetPlaces()
    const { toast } = useToast()
    const { role } = useGetRole()
    const [showFinishedEvents, setShowFinishedEvents] = useState<boolean>(false)
    const [showActiveEvents, setShowActiveEvents] = useState<boolean>(true)
    const [showRegisteringEvents, setShowRegisteringEvents] =
        useState<boolean>(true)
    const [showEventForm, setShowEventForm] = useState<boolean>(false)
    const { filteredEvents, refetchEvents } = useGetEvents({
        showActiveEvents: showActiveEvents,
        showFinishedEvents: showFinishedEvents,
        showRegisteringEvents: showRegisteringEvents,
    })

    const createEventToast = (event: PadelEvent) => {
        toast({
            title: 'Success! 🙌',
            description: `Created Event ${event.name} at ${event.places.map((p) => p.name).join(', ')} with categories: ${event.categories.map((c) => `${c.level} ${c.type}`).join(', ')}.`,
        })
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
        <div className="flex flex-col items-center justify-center w-full">
            {role === 'ADMIN' && (
                <div className="flex flex-col items-center w-full">
                    <div className="flex flex-col w-2/3">
                        {showEventForm ? (
                            <>
                                <div
                                    className="flex justify-center mt-2 mb-2 cursor-pointer"
                                    onClick={() => setShowEventForm(false)}
                                >
                                    <h1 className="flex flex-row items-center mt-2 mb-2 text-2xl font-bold lg:text-3xl">
                                        Create an event
                                        <CalendarDays className="w-5 h-5 ml-2" />
                                    </h1>
                                </div>
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
                            </>
                        ) : (
                            <div
                                className="flex justify-center mt-2 mb-2 cursor-pointer"
                                onClick={() => setShowEventForm(true)}
                            >
                                <h1 className="flex flex-row items-center text-2xl font-bold lg:text-3xl ">
                                    Create an event
                                    <CalendarDays className="w-5 h-5 ml-2" />
                                </h1>
                            </div>
                        )}
                    </div>
                </div>
            )}

            {filteredEvents && (
                <div className="flex flex-col items-center justify-center w-full mt-4 space-y-2">
                    <h1 className="flex flex-row items-center mt-2 mb-2 text-2xl font-bold lg:text-3xl ">
                        Events
                        <CalendarDays className="w-5 h-5 ml-2" />
                    </h1>

                    <div className="grid grid-cols-1 space-y-2 justify-items-center md:grid-cols-3">
                        <EventsFiltersCard
                            showFinishedEvents={showFinishedEvents}
                            setShowFinishedEvents={setShowFinishedEvents}
                            showActiveEvents={showActiveEvents}
                            setShowActiveEvents={setShowActiveEvents}
                            showRegisteringEvents={showRegisteringEvents}
                            setShowRegisteringEvents={setShowRegisteringEvents}
                        />
                        <ScrollArea className="w-full h-screen p-0.5 md:col-span-2">
                            {filteredEvents.map((event) => (
                                <div key={event.id}>
                                    <EventCard
                                        event={event}
                                        className="w-11/12 md:w-[440px] lg:w-[620px] mb-1"
                                    />
                                </div>
                            ))}
                        </ScrollArea>
                    </div>
                </div>
            )}
        </div>
    )
}
