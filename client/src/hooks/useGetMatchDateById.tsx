import { MatchDate } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

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
            const { data }: { data: MatchDate } = await axios.get(
                `${import.meta.env.VITE_SERVER_URL}/match-dates/${matchDateId}`
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
