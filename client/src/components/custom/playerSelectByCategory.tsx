import {
    Category,
    ErrorResponse,
    InviteType,
    Player,
} from '@/types/padel.types'
import {
    Select,
    SelectContent,
    SelectGroup,
    SelectLabel,
    SelectSeparator,
    SelectTrigger,
    SelectValue,
} from '../ui/select'

import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuLabel,
    DropdownMenuRadioGroup,
    DropdownMenuRadioItem,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '../ui/dropdown-menu'
import { axiosInstance } from '@/axiosInstance'
import axios, { AxiosError } from 'axios'
import { useState } from 'react'
import { useToast } from '../ui/use-toast'
import { ErrorAlert } from './errorAlert'
import { Button } from '../ui/button'

type PlayerSelectByCategoryProps = {
    players: Player[] | undefined
    categories: Category[] | undefined
}

export const PlayerSelectByCategory = ({
    players,
    categories,
}: PlayerSelectByCategoryProps) => {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { toast } = useToast()

    const sendInvite = async (invitedId: string, inviteType: InviteType) => {
        try {
            const requestBody = {
                invitedId: invitedId,
                inviteType: inviteType,
            }
            if (inviteType === 'DOUBLES') {
                const data = await axiosInstance.post(
                    'invites/doubles-invite',
                    requestBody
                )
                toast({
                    title: 'Sent doubles invite.',
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
        <Select>
            <SelectTrigger className="w-[280px]">
                <SelectValue placeholder="Select a player" />
            </SelectTrigger>
            <SelectContent>
                {categories?.map((c, index) => (
                    <SelectGroup key={index}>
                        {index > 0 && <SelectSeparator />}
                        <SelectLabel>
                            {c.level} {c.type}
                        </SelectLabel>

                        {players
                            ?.filter((player) => player.category.id === c.id)
                            .map((filteredPlayer, index) => (
                                <>
                                    <DropdownMenu key={index}>
                                        <DropdownMenuTrigger
                                            asChild
                                            className="flex flex-col items-start"
                                        >
                                            <Button
                                                variant="ghost"
                                                className="w-full cursor-pointer "
                                            >
                                                {filteredPlayer.firstName}{' '}
                                                {filteredPlayer.lastName}
                                            </Button>
                                        </DropdownMenuTrigger>

                                        <DropdownMenuContent className="flex flex-col w-56">
                                            <DropdownMenuLabel>
                                                Invite Type
                                            </DropdownMenuLabel>
                                            <DropdownMenuSeparator />
                                            <DropdownMenuRadioGroup>
                                                <DropdownMenuRadioItem
                                                    className="cursor-pointer"
                                                    value="doubles"
                                                    onClick={() =>
                                                        sendInvite(
                                                            filteredPlayer.id,
                                                            InviteType.DOUBLES
                                                        )
                                                    }
                                                >
                                                    Doubles
                                                </DropdownMenuRadioItem>
                                                <DropdownMenuRadioItem
                                                    className="cursor-pointer"
                                                    value="match"
                                                    onClick={() =>
                                                        console.log(
                                                            'invite for a match'
                                                        )
                                                    }
                                                >
                                                    Match
                                                </DropdownMenuRadioItem>
                                            </DropdownMenuRadioGroup>
                                        </DropdownMenuContent>
                                    </DropdownMenu>
                                </>
                            ))}
                    </SelectGroup>
                ))}
            </SelectContent>
            {isError && (
                <div onClick={() => setError(false)} className="w-full mt-4">
                    <ErrorAlert message={errorMessage} />
                </div>
            )}
        </Select>
    )
}
