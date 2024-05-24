import { axiosInstance } from '@/axiosInstance'
import { Match } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export const useGetMatchById = (matchId: string | undefined) => {
    const {
        data: matchById,
        isFetching: isFetchingMatchById,
        refetch: refetchMatchById,
    } = useQuery({
        queryKey: ['get-match-by-id', matchId],
        queryFn: async () => {
            if (matchId === undefined) {
                return
            }
            const { data }: { data: Match } = await axiosInstance.get(
                `/matches/${matchId}`
            )
            if (data) {
                return data
            }
            return
        },
        enabled: !!matchId,
    })

    return {
        matchById,
        isFetchingMatchById,
        refetchMatchById,
    }
}
