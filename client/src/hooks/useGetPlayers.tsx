import { Player } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

export const useGetPlayers = () => {
    const { data: allPlayers, isFetching } = useQuery({
        queryKey: ['get-all-players'],
        queryFn: async () => {
            const { data }: { data: Player[] } = await axios.get(
                'http://localhost:3000/player'
            )
            if (data) {
                return data
            }
            return
        },
    })
    const playersIds = allPlayers?.map((item) => item.id)

    return { allPlayers, isFetching, playersIds }
}
