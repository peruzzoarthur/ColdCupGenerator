import { AxiosError, AxiosResponse } from 'axios'
import { createLazyFileRoute } from '@tanstack/react-router'
import axios from 'axios'
import DoublesForm, { doublesFormObject } from '@/components/custom/doublesForm'
import { useState } from 'react'
import { ErrorAlert } from '@/components/custom/errorAlert'
import { useToast } from '@/components/ui/use-toast'
import { Double } from '@/types/padel.types'
import { useGetCategories } from '@/hooks/useGetCategories'
import { Button } from '@/components/ui/button'
import { useGetDoubles } from '@/hooks/useGetDoubles'
import { DoublesCard } from '@/components/custom/doublesCard'
import { axiosInstance } from '@/axiosInstance'
import { twMerge } from 'tailwind-merge'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Users2 } from 'lucide-react'

export const Route = createLazyFileRoute('/_auth/doubles')({
    component: Doubles,
})

export type ErrorResponse = {
    message: string
}

function Doubles() {
    const [showAllDoubles, setShowAllDoubles] = useState<boolean>(false)
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
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
        <div className="flex flex-col justify-center w-11/12 space-y-4 xl:w-3/5">
            <h1 className="flex flex-row items-center mt-2 mb-2 text-2xl font-bold ">
                Register Doubles
                <Users2 className="w-5 h-5 ml-2" />
            </h1>
            <div className="grid md:grid-cols-2 justify-items-center">
                <div
                    className={twMerge(
                        'flex flex-col',
                        showAllDoubles
                            ? 'col-span-1 w-full md:w-10/12'
                            : 'col-span-2 w-full sm:w-2/3 lg:w-3/5'
                    )}
                >
                    <DoublesForm
                        allCategories={allCategories}
                        onSubmit={onSubmit}
                        defaultValues={{
                            playerOneId: '',
                            playerTwoId: '',
                            categoryId: '',
                        }}
                    />
                    {showAllDoubles ? (
                        <Button
                            className="mt-2"
                            onClick={allDoublesOff}
                            variant="secondary"
                        >
                            Close
                        </Button>
                    ) : (
                        <Button
                            onClick={allDoublesOn}
                            className="mt-4"
                            variant="secondary"
                        >
                            Show all doubles
                        </Button>
                    )}
                    {isError && (
                        <div onClick={() => setError(false)} className="mt-4">
                            <ErrorAlert message={errorMessage} />
                        </div>
                    )}
                </div>

                {showAllDoubles && allDoubles && (
                    <ScrollArea className="h-[420px] mt-4 md:h-screen md:mt-0">
                        {allDoubles.map((d, index) => (
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
                    </ScrollArea>
                )}
            </div>
        </div>
    )
}
