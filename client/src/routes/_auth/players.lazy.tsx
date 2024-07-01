import PlayerForm, { playerFormObject } from '@/components/custom/playerForm'
import { useGetCategories } from '@/hooks/useGetCategories'
import { createLazyFileRoute } from '@tanstack/react-router'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { useState } from 'react'
import { Player, Position } from '@/types/padel.types'
import { ErrorAlert } from '@/components/custom/errorAlert'
import { useToast } from '@/components/ui/use-toast'
import { Button } from '@/components/ui/button'
import { useGetPlayers } from '@/hooks/useGetPlayers'
import { PlayerCard } from '@/components/custom/playerCard'
import { axiosInstance } from '@/axiosInstance'
import { ScrollArea } from '@/components/ui/scroll-area'
import { twMerge } from 'tailwind-merge'
import { CircleUser } from 'lucide-react'

export const Route = createLazyFileRoute('/_auth/players')({
    component: Players,
})

export type ErrorResponse = {
    message: string
}

export type CreatePlayer = Partial<Player>

function Players() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { allCategories } = useGetCategories()
    const [showAllPlayers, setShowAllPlayers] = useState<boolean>(false)
    const { allPlayers, refetchAllPlayers } = useGetPlayers()

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
            refetchAllPlayers()
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
                    setErrorMessage('Error creating player')
                }
            } else {
                setError(true)
                setErrorMessage('Error creating player')
            }
        }
    }

    return (
        <div className="flex flex-col justify-center w-4/5 space-y-4 xl:w-3/5">
            <h1 className="flex flex-row items-center mb-4 text-2xl font-bold">
                Register Player
                <CircleUser className="items-center w-5 h-5 ml-2" />
            </h1>
            <div className="grid md:grid-cols-2 justify-items-center">
                <div
                    className={twMerge(
                        'flex flex-col w-full',
                        showAllPlayers ? 'col-span-1' : 'col-span-2  w-2/3'
                    )}
                >
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
                    {showAllPlayers ? (
                        <Button
                            className="mt-2"
                            variant="secondary"
                            onClick={allPlayersOff}
                        >
                            Close
                        </Button>
                    ) : (
                        <Button
                            onClick={allPlayersOn}
                            className="mt-4"
                            variant="secondary"
                        >
                            Show all players
                        </Button>
                    )}
                    {isError && (
                        <div onClick={() => setError(false)} className="mt-4">
                            <ErrorAlert message={errorMessage} />
                        </div>
                    )}
                </div>
                {showAllPlayers && allPlayers && (
                    <ScrollArea className="h-[420px] mt-4 md:h-screen md:mt-0">
                        {allPlayers.map((p, index) => (
                            <PlayerCard
                                player={p}
                                key={index}
                                className="mt-2"
                                setError={setError}
                                setErrorMessage={setErrorMessage}
                                refetchAllPlayers={refetchAllPlayers}
                            />
                        ))}
                    </ScrollArea>
                )}
            </div>
        </div>
    )
}
