import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

type MatchGamesResponse = {
    doublesOneGames: number
    doublesTwoGames: number
}

export const useGetMatchGames = (matchId: string) => {
    const { data: matchGames, isFetching } = useQuery({
        queryKey: ['get-match-games', matchId],
        queryFn: async () => {
            const { data }: { data: MatchGamesResponse } = await axios.get(
                `${import.meta.env.VITE_SERVER_URL}/matches/result/${matchId}`
            )
            if (data) {
                return data
            }
            return
        },
    })

    return { matchGames, isFetching }
}
