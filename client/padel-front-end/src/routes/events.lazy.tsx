import { createLazyFileRoute } from '@tanstack/react-router'
import axios from 'axios'
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

type formObject = {
    eventName: string
    categoriesIds: string
    placesIds: string
}

export const Route = createLazyFileRoute('/events')({
    component: Events,
})

function Events() {
    const [showAllEvents, setShowAllEvents] = useState<boolean>(false)
    const [selectedEvent, setSelectedEvent] = useState<PadelEvent | undefined>()
    const [toggleEvent, setToggleEvent] = useState<boolean>(false)
    const [categoriesState, setCategoriesState] = useState<string[]>([])
    const [placesState, setPlacesState] = useState<string[]>([])
    const { allCategories } = useGetCategories()
    const { allPlaces } = useGetPlaces()
    const { allEvents } = useGetEvents()

    console.log(allEvents)

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

    const onSubmit = async (input: formObject) => {
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
                                onSubmit={onSubmit}
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
                <div className="flex justify-center">
                    <ExtendedEventCard
                        event={selectedEvent}
                        toggleEventOff={toggleEventOff}
                    />
                </div>
            )}
        </>
    )
}
