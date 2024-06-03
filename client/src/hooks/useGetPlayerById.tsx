import { axiosInstance } from '@/axiosInstance'
import { Player } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export const useGetPlayerById = (playerId: string | undefined) => {
    const {
        data: playerById,
        isFetching: isFetchingPlayerById,
        refetch: refetchPlayerById,
    } = useQuery({
        queryKey: ['get-player-by-id', playerId],
        queryFn: async () => {
            if (playerId === undefined) {
                return
            }
            const { data }: { data: Player } = await axiosInstance.get(
                `/player/${playerId}`
            )
            if (data) {
                return data
            }
            return
        },
        enabled: !!playerId,
    })

    return {
        playerById,
        isFetchingPlayerById,
        refetchPlayerById,
    }
}
