import PlayerForm, { playerFormObject } from '@/components/custom/playerForm'
import { useGetCategories } from '@/hooks/useGetCategories'
import { createLazyFileRoute } from '@tanstack/react-router'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { useState } from 'react'
import ball from '../../styles/png/ball.png'
import { Player, Position } from '@/types/padel.types'
import { ErrorAlert } from '@/components/custom/errorAlert'
import { useToast } from '@/components/ui/use-toast'
import { Button } from '@/components/ui/button'
import { useGetPlayers } from '@/hooks/useGetPlayers'
import { PlayerCard } from '@/components/custom/playerCard'
import { axiosInstance } from '@/axiosInstance'

export const Route = createLazyFileRoute('/_admin/players')({
    component: Players,
})

export type ErrorResponse = {
    message: string
}

export type CreatePlayer = Omit<Player, 'id'>

function Players() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { allCategories } = useGetCategories()
    const [showAllPlayers, setShowAllPlayers] = useState<boolean>(false)
    const { allPlayers } = useGetPlayers()

    const allPlayersOn = () => {
        setShowAllPlayers(true)
    }

    const allPlayersOff = () => {
        setShowAllPlayers(false)
    }

    const { toast } = useToast()

    const toasted = (player: Player) => {
        toast({
            title: 'Success! 🙌',

            description: `Created ${player.firstName} ${player.lastName} position: ${player.position}.`,
            // className: 'bg-emerald-600 bg-opacity-60 text-white',
        })
    }

    const onSubmit = async (input: playerFormObject) => {
        try {
            const requestBody: CreatePlayer = {
                firstName: input.firstName,
                lastName: input.lastName,
                categoryId: input.categoryId,
                position: input.position as Position,
            }

            const data: AxiosResponse<Player> = await axiosInstance.post(
                '/player/create-player',
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
                        Register Player
                        <img src={ball} alt="ball" className="w-8 h-8" />
                    </h1>
                    <div className="flex flex-col">
                        <PlayerForm
                            allCategories={allCategories}
                            onSubmit={onSubmit}
                            defaultValues={{
                                firstName: '',
                                lastName: '',
                                categoryId: '',
                                position: '',
                            }}
                        />
                        {!showAllPlayers && (
                            <Button onClick={allPlayersOn} className="mt-4">
                                Show all players
                            </Button>
                        )}
                        {showAllPlayers && (
                            <>
                                {allPlayers?.map((p, index) => (
                                    <PlayerCard
                                        player={p}
                                        key={index}
                                        className="mt-2"
                                        setError={setError}
                                        setErrorMessage={setErrorMessage}
                                    />
                                ))}
                                <Button
                                    className="mt-2"
                                    onClick={allPlayersOff}
                                >
                                    Close
                                </Button>
                            </>
                        )}
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
