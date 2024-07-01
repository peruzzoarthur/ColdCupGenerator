import { axiosInstance } from '@/axiosInstance'
import { Player } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export const useGetPlayers = () => {
    const {
        data: allPlayers,
        isFetching,
        refetch: refetchAllPlayers,
    } = useQuery({
        queryKey: ['get-all-players'],
        queryFn: async () => {
            const { data }: { data: Player[] } =
                await axiosInstance.get('/player')
            if (data) {
                return data
            }
            return
        },
    })
    const playersIds = allPlayers?.map((item) => item.id)

    return { allPlayers, isFetching, playersIds, refetchAllPlayers }
}
