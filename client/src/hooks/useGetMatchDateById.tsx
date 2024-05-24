import { axiosInstance } from '@/axiosInstance'
import { MatchDate } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export const useGetMatchDateById = (matchDateId: string | undefined) => {
    const {
        data: matchDateById,
        isFetching: isFetchingMatchDateById,
        refetch: refetchMatchDateById,
    } = useQuery({
        queryKey: ['get-matchDate-by-id', matchDateId],
        queryFn: async () => {
            if (matchDateId === undefined) {
                return
            }
            const { data }: { data: MatchDate } = await axiosInstance.get(
                `/match-dates/${matchDateId}`
            )
            if (data) {
                return data
            }
            return
        },
        enabled: !!matchDateId,
    })

    return {
        matchDateById,
        isFetchingMatchDateById,
        refetchMatchDateById,
    }
}
