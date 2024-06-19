import { axiosInstance } from '@/axiosInstance'
import { ErrorAlert } from '@/components/custom/errorAlert'
import { EventDashboard } from '@/components/custom/eventDashboard'
import RegisterDoublesForm, {
    registerDoublesFormObject,
} from '@/components/custom/registerDoublesForm'
import { useToast } from '@/components/ui/use-toast'
import { useGetDoubles } from '@/hooks/useGetDoubles'
import { useGetEventById } from '@/hooks/useGetEventById'
import { useGetEventMatchesInfoById } from '@/hooks/useGetEventMatchesInfoById'
import { useGetRole } from '@/hooks/useGetRole'
import {
    Double,
    ErrorResponse,
    EventDouble,
    InviteType,
    PadelEvent,
} from '@/types/padel.types'
import { createFileRoute } from '@tanstack/react-router'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { useState } from 'react'
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuLabel,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { useGetUserById } from '@/hooks/useGetUser'
import { useGetPlayerById } from '@/hooks/useGetPlayerById'
import { CoolButton } from '@/components/custom/coolButton'

export const Route = createFileRoute('/_auth/events/$id')({
    component: Event,
})

function Event() {
    const { id } = Route.useParams()
    const { eventById, refetchEventById } = useGetEventById(id)

    const { refetchEventMatchesInfoById } = useGetEventMatchesInfoById(
        eventById?.id
    )
    const { toast } = useToast()

    const { allDoubles } = useGetDoubles()

    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const [categoriesState, setCategoriesState] = useState<string[]>([])
    const { role } = useGetRole()
    const { user } = useGetUserById()
    const { playerById } = useGetPlayerById(user?.playerId)

    const registerDoublesToast = (
        double: Double | undefined,
        event: PadelEvent | undefined
    ) => {
        toast({
            title: 'Success! 🙌',
            description: `Registered doubles ${double?.players.map((p) => `${p.firstName} ${p.lastName}`).join(', ')} at event ${event?.name}`,
        })
    }
    const registerDoubleOnSubmit = async (input: registerDoublesFormObject) => {
        try {
            const requestBody = {
                doublesId: input.doublesId,
                eventId: eventById?.id,
            }

            const data: AxiosResponse<EventDouble> = await axiosInstance.post(
                '/events/register',
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

    const sendEventInvite = async (
        invitedId: string,
        inviteType: InviteType
    ) => {
        try {
            const requestBody = {
                invitedId: invitedId,
                inviteType: inviteType,
                eventId: eventById?.id,
            }
            if (inviteType === 'EVENT') {
                const data = await axiosInstance.post(
                    'invites/event-invite',
                    requestBody
                )
                toast({
                    title: 'Sent invite to play event.',
                })

                return data.data
            }
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
            } else {
                setError(true)
                setErrorMessage('Error sending invitation.')
            }
        }
    }

    return (
        <>
            {eventById && (
                <>
                    <div className="flex flex-col items-center w-full">
                        <div className="flex flex-col justify-center w-5/6 mt-2 mb-4">
                            <h1 className="justify-center mb-4 text-3xl font-medium">
                                🏆 {eventById?.name} 🏆
                            </h1>

                            {role === 'ADMIN' && (
                                <RegisterDoublesForm
                                    categoriesState={categoriesState}
                                    eventCategories={eventById.categories.map(
                                        (cat) => cat
                                    )}
                                    onSubmit={registerDoubleOnSubmit}
                                    setCategoriesState={setCategoriesState}
                                    defaultValues={{
                                        doublesId: '',
                                    }}
                                    allDoubles={allDoubles}
                                />
                            )}

                            {!eventById.isActive && (
                                <div className="flex justify-center p-6">
                                    <DropdownMenu>
                                        <CoolButton as="div">
                                            <DropdownMenuTrigger>
                                                Register in event 🎾
                                            </DropdownMenuTrigger>
                                        </CoolButton>

                                        <DropdownMenuContent>
                                            <DropdownMenuLabel>
                                                Invite player to play
                                            </DropdownMenuLabel>
                                            <DropdownMenuSeparator />

                                            {playerById?.doubles.map(
                                                (d, index) => {
                                                    const otherPlayerId =
                                                        d.players
                                                            .filter(
                                                                (p) =>
                                                                    p.id !==
                                                                    playerById.id
                                                            )
                                                            .map((p) => p.id)[0]
                                                    return (
                                                        <DropdownMenuItem
                                                            key={index}
                                                            className="cursor-pointer"
                                                            onClick={async () =>
                                                                sendEventInvite(
                                                                    otherPlayerId,
                                                                    InviteType.EVENT
                                                                )
                                                            }
                                                        >
                                                            {d.players
                                                                .filter(
                                                                    (p) =>
                                                                        p.id !==
                                                                        playerById.id
                                                                )
                                                                .map(
                                                                    (p) =>
                                                                        `${p.firstName} ${p.lastName}`
                                                                )}
                                                        </DropdownMenuItem>
                                                    )
                                                }
                                            )}
                                        </DropdownMenuContent>
                                    </DropdownMenu>
                                </div>
                            )}
                            {isError && (
                                <div
                                    onClick={() => setError(false)}
                                    className="mb-4 "
                                >
                                    <ErrorAlert message={errorMessage} />
                                </div>
                            )}
                        </div>
                        <EventDashboard event={eventById} />
                    </div>
                </>
            )}
        </>
    )
}
