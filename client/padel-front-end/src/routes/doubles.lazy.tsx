import { createLazyFileRoute } from '@tanstack/react-router'
import axios from 'axios'
// import { useState } from 'react'
import ball from '../styles/png/ball.png'
import DoublesForm, { doublesFormObject } from '@/components/custom/doublesForm'
import { useGetPlayers } from '@/hooks/useGetPlayers'

export const Route = createLazyFileRoute('/doubles')({
    component: Doubles,
})

function Doubles() {
    // const [showAllEvents, setShowAllEvents] = useState<boolean>(false)
    // const [categoriesState, setCategoriesState] = useState<string[]>([])
    const { allPlayers } = useGetPlayers()

    const onSubmit = async (input: doublesFormObject) => {
        const requestBody = {
            playerOneId: input.playerOneId,
            playerTwoId: input.playerTwoId,
        }
        console.log(requestBody)
        const data = await axios.post(
            'http://localhost:3000/doubles',
            requestBody
        )

        console.log(data)
    }

    return (
        <>
            <div className="flex justify-center">
                <div className="flex flex-col w-2/3">
                    <h1 className="flex flex-row mt-2 mb-2 text-2xl font-bold">
                        Register Doubles
                        <img src={ball} alt="ball" className="w-8 h-8" />
                    </h1>
                    <div className="flex flex-col">
                        <DoublesForm
                            allPlayers={allPlayers}
                            onSubmit={onSubmit}
                            defaultValues={{
                                playerOneId: '',
                                playerTwoId: '',
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
