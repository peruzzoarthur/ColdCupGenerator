import { axiosInstance } from '@/axiosInstance'
import { useQuery } from '@tanstack/react-query'

export type MatchGamesResponse = {
    doublesOneGames: number
    doublesTwoGames: number
}

export const useGetMatchGames = (matchId: string, isFinished: boolean) => {
    const {
        data: matchGames,
        isFetching,
        refetch: refetchMatchGames,
    } = useQuery({
        queryKey: ['get-match-games', matchId, isFinished],
        queryFn: async () => {
            const { data }: { data: MatchGamesResponse } =
                await axiosInstance.get(`/matches/result/${matchId}`)
            if (data) {
                return data
            }
            return null
        },
        enabled: !!isFinished,
    })

    return { matchGames, isFetching, refetchMatchGames }
}
