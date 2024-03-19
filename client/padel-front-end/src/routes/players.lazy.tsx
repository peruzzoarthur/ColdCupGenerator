import PlayerForm, { playerFormObject } from '@/components/custom/playerForm'
import { useGetCategories } from '@/hooks/useGetCategories'
import { createLazyFileRoute } from '@tanstack/react-router'
import axios from 'axios'
import { useState } from 'react'
import ball from '../styles/png/ball.png'
import { Player, Position } from '@/types/padel.types'

export const Route = createLazyFileRoute('/players')({
    component: Players,
})

function Players() {
    // const [showAllEvents, setShowAllEvents] = useState<boolean>(false)
    const [categoriesState, setCategoriesState] = useState<string[]>([])
    const { allCategories } = useGetCategories()

    const onSubmit = async (input: playerFormObject) => {
        const requestBody: Player = {
            firstName: input.firstName,
            lastName: input.lastName,
            email: input.email,
            categoryId: input.categoryId,
            position: input.position as Position,
        }

        const data = await axios.post(
            'http://localhost:3000/player/create-player',
            requestBody
        )

        console.log(data)
    }

    return (
        <>
            <div className="flex justify-center">
                <div className="flex flex-col w-2/3">
                    <h1 className="flex flex-row mt-2 mb-2 text-2xl font-bold">
                        Register Player
                        <img src={ball} alt="ball" className="w-8 h-8" />
                    </h1>
                    <div className="flex flex-col">
                        <PlayerForm
                            allCategories={allCategories}
                            onSubmit={onSubmit}
                            categoriesState={categoriesState}
                            setCategoriesState={setCategoriesState}
                            defaultValues={{
                                firstName: '',
                                lastName: '',
                                email: '',
                                categoryId: '',
                                position: '',
                            }}
                        />
                    </div>

                    {/* {!showAllEvents && (
                        <Button onClick={() => allEventsOn()} className="mt-12">
                            Show all events
                        </Button>
                    )} */}
                    {/* 
                    {showAllEvents && (
                        <div className="flex flex-col justify-center">
                            {allEvents?.map((event, index) => (
                                <div
                                    key={index}
                                    className="justify-between w-1/3 mt-2"
                                >
                                    <EventCard event={event} key={index} />
                                </div>
                            ))}
                            <Button
                                onClick={() => allEventsOff()}
                                className="mt-12"
                            >
                                Close
                            </Button>
                        </div>
                    )} */}
                </div>
            </div>
        </>
    )
}
