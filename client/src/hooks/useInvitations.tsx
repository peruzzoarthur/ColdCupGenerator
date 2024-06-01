import { axiosInstance } from '@/axiosInstance'
import { Invitation } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export const useInvitations = () => {
    const {
        data: playerInvitations,
        isFetching: isFetchingPlayerInvitations,
        refetch: refetchPlayerInvitations,
    } = useQuery({
        queryKey: ['get-player-invitations'],
        queryFn: async () => {
            const { data }: { data: { id: string; invites: Invitation[] } } =
                await axiosInstance.get('/player/invites')
            if (data) {
                const playerId = data.id
                const invitations = data.invites
                return { playerId, invitations }
            }
            return
        },
    })

    return {
        playerInvitations,
        isFetchingPlayerInvitations,
        refetchPlayerInvitations,
    }
}
