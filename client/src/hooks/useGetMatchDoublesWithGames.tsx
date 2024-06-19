import { axiosInstance } from '@/axiosInstance'
import { Double } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export type MatchDoublesWithGamesResponse = {
    doublesOne: {
        doubles: Double
        gamesWon: number
    }
    doublesTwo: {
        doubles: Double
        gamesWon: number
    }
}

export const useGetMatchDoublesWithGames = (
    matchId: string,
    isFinished: boolean
) => {
    const {
        data: matchDoublesWithGames,
        isFetching,
        refetch: refetchMatchDoublesWithGames,
    } = useQuery({
        queryKey: ['get-match-games', matchId, isFinished],
        queryFn: async () => {
            console.log(matchId)
            const { data }: { data: MatchDoublesWithGamesResponse } =
                await axiosInstance.get(`/matches/result/${matchId}`)
            if (data) {
                return data
            }
            return null
        },
        enabled: !!isFinished,
    })

    return { matchDoublesWithGames, isFetching, refetchMatchDoublesWithGames }
}
