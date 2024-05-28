import { AxiosError, AxiosResponse } from 'axios'
import { createLazyFileRoute } from '@tanstack/react-router'
import axios from 'axios'
import ball from '../../styles/png/ball.png'
import DoublesForm, { doublesFormObject } from '@/components/custom/doublesForm'
import { useGetPlayers } from '@/hooks/useGetPlayers'
import { useState } from 'react'
import { ErrorAlert } from '@/components/custom/errorAlert'
import { useToast } from '@/components/ui/use-toast'
import { Double } from '@/types/padel.types'
import { useGetCategories } from '@/hooks/useGetCategories'
import { Button } from '@/components/ui/button'
import { useGetDoubles } from '@/hooks/useGetDoubles'
import { DoublesCard } from '@/components/custom/doublesCard'
import { axiosInstance } from '@/axiosInstance'

export const Route = createLazyFileRoute('/_admin/doubles')({
    component: Doubles,
})

export type ErrorResponse = {
    message: string
}

function Doubles() {
    const [showAllDoubles, setShowAllDoubles] = useState<boolean>(false)
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { allPlayers } = useGetPlayers()
    const { allCategories } = useGetCategories()
    const { toast } = useToast()
    const { allDoubles, refetchDoubles } = useGetDoubles()

    const allDoublesOn = () => {
        setShowAllDoubles(true)
        refetchDoubles()
        if (showAllDoubles) {
            setShowAllDoubles(false)
        }
    }

    const allDoublesOff = () => {
        setShowAllDoubles(false)
    }

    const toasted = (doubles: Double) => {
        toast({
            title: 'Success! 🙌',
            description: `Created doubles for Player 1: ${doubles.players[0].firstName} ${doubles.players[0].lastName} and Player 2: ${doubles.players[1].firstName} ${doubles.players[1].lastName} .`,
        })
    }

    const onSubmit = async (input: doublesFormObject) => {
        try {
            const requestBody: doublesFormObject = {
                playerOneId: input.playerOneId,
                playerTwoId: input.playerTwoId,
                categoryId: input.categoryId,
            }

            const data: AxiosResponse<Double> = await axiosInstance.post(
                '/doubles',
                requestBody
            )

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
                        Register Doubles
                        <img src={ball} alt="ball" className="w-8 h-8" />
                    </h1>
                    <div className="flex flex-col">
                        <DoublesForm
                            allPlayers={allPlayers}
                            allCategories={allCategories}
                            onSubmit={onSubmit}
                            defaultValues={{
                                playerOneId: '',
                                playerTwoId: '',
                                categoryId: '',
                            }}
                        />
                    </div>

                    {isError && (
                        <div onClick={() => setError(false)} className="mt-4">
                            <ErrorAlert message={errorMessage} />
                        </div>
                    )}
                    {!showAllDoubles && (
                        <Button onClick={allDoublesOn} className="mt-4">
                            Show all doubles
                        </Button>
                    )}
                    {showAllDoubles && (
                        <>
                            {allDoubles?.map((d, index) => (
                                <DoublesCard
                                    doubles={d}
                                    key={index}
                                    className="mt-2"
                                    setError={setError}
                                    setErrorMessage={setErrorMessage}
                                    allCategories={allCategories}
                                    refetchDoubles={refetchDoubles}
                                    setShowAllDoubles={setShowAllDoubles}
                                />
                            ))}
                            <Button className="mt-2" onClick={allDoublesOff}>
                                Close
                            </Button>
                        </>
                    )}
                </div>
            </div>
        </>
    )
}
