import { Match } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

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
            const { data }: { data: Match } = await axios.get(
                `${import.meta.env.VITE_SERVER_URL}/matches/${matchId}`
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
