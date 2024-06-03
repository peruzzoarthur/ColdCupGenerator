import { axiosInstance } from '@/axiosInstance'
import { ErrorResponse, Invitation } from '@/types/padel.types'
import { useState } from 'react'
import { useToast } from '../ui/use-toast'
import axios, { AxiosError } from 'axios'
import { ErrorAlert } from './errorAlert'
import { Check, X } from 'lucide-react'
import { Button } from '../ui/button'
import { Separator } from '../ui/separator'
import { useInvitations } from '@/hooks/useInvitations'
import { useGetPlayerById } from '@/hooks/useGetPlayerById'

type InvitationBlockProps = {
    playerId: string
    invitation: Invitation
}
export const InvitationBlock = ({
    playerId,
    invitation,
}: InvitationBlockProps) => {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { toast } = useToast()
    const { refetchPlayerInvitations } = useInvitations()

    const { playerById: inviter } = useGetPlayerById(invitation.inviterId)

    const { playerById: invited } = useGetPlayerById(invitation.invitedId)

    const acceptDoublesInvite = async (inviteId: string, accepted: boolean) => {
        try {
            const requestBody = {
                inviteId: inviteId,
                accepted: accepted,
            }
            const data = await axiosInstance.post(
                'invites/respond-doubles-invite',
                requestBody
            )
            accepted
                ? toast({
                      title: 'Doubles accepted',
                  })
                : toast({
                      title: 'Request denied',
                  })
            refetchPlayerInvitations()
            return data.data
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
            } else {
                setError(true)
                setErrorMessage('Error responding to invitation.')
            }
        }
    }

    const cancelDoublesInvite = async (inviteId: string) => {
        try {
            const requestBody = {
                inviteId: inviteId,
            }
            const data = await axiosInstance.post(
                'invites/cancel-doubles-invite',
                requestBody
            )
            toast({
                title: 'Request canceled',
            })
            refetchPlayerInvitations()
            return data.data
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
            } else {
                setError(true)
                setErrorMessage('Error responding to invitation.')
            }
        }
    }
    return (
        <>
            {invitation.inviteType === 'DOUBLES' && (
                <>
                    {/* The actual user is the invited */}
                    <div className="grid grid-flow-row-dense grid-cols-2">
                        {playerId === invitation.invitedId && (
                            <>
                                <div className="flex flex-col justify-center">
                                    <p className="font-semibold">
                                        {invitation.inviteType}
                                    </p>
                                    <p className="text-muted-foreground">{`'${inviter?.firstName} ${inviter?.lastName} - [${inviter?.category.level} ${inviter?.category.type}]' sent a doubles invitation`}</p>
                                </div>
                                <div className="flex flex-col items-end">
                                    <Button
                                        variant="ghost"
                                        className="w-12 h-12 rounded-full"
                                        onClick={() =>
                                            acceptDoublesInvite(
                                                invitation.id,
                                                true
                                            )
                                        }
                                    >
                                        <Check />
                                    </Button>
                                    <Button
                                        variant="ghost"
                                        className="w-12 h-12 rounded-full"
                                        onClick={() =>
                                            acceptDoublesInvite(
                                                invitation.id,
                                                false
                                            )
                                        }
                                    >
                                        <X />
                                    </Button>
                                </div>
                            </>
                        )}
                        {/* The actual user is the inviter */}
                        {playerId === invitation.inviterId && (
                            <>
                                <div className="flex flex-col justify-center">
                                    <p className="font-semibold">
                                        {invitation.inviteType}
                                    </p>
                                    <p className="text-muted-foreground">{`You invited '${invited?.firstName} ${invited?.lastName} - [${invited?.category.level} ${invited?.category.type}]' for doubles`}</p>
                                </div>
                                <div className="flex flex-col items-end">
                                    <Button
                                        variant="ghost"
                                        className="w-12 h-12 rounded-full"
                                        onClick={() =>
                                            cancelDoublesInvite(invitation.id)
                                        }
                                    >
                                        <X />
                                    </Button>
                                </div>
                            </>
                        )}
                    </div>
                    <Separator className="my-2" />
                </>
            )}
            {invitation.inviteType === 'EVENT' && (
                <>
                    <p className="font-semibold">{invitation.inviteType}</p>
                    <p>eventId...</p>
                    <Separator className="my-2" />
                </>
            )}
            {invitation.inviteType === 'MATCH' && (
                <>
                    <p className="font-semibold">{invitation.inviteType}</p>
                    <p>matchInfo...</p>
                    <Separator className="my-2" />
                </>
            )}
            {isError && (
                <div onClick={() => setError(false)} className="mt-4">
                    <ErrorAlert message={errorMessage} />
                </div>
            )}
        </>
    )
}
