import { axiosInstance } from '@/axiosInstance'
import { Double } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export type MatchGamesResponse = {
    doublesOne: {
        doubles: Double
        gamesWon: number
    }
    doublesTwo: {
        doubles: Double
        gamesWon: number
    }
}

export const useGetMatchGames = (matchId: string, isFinished: boolean) => {
    const {
        data: matchGames,
        isFetching,
        refetch: refetchMatchGames,
    } = useQuery({
        queryKey: ['get-match-games', matchId, isFinished],
        queryFn: async () => {
            console.log(matchId)
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
