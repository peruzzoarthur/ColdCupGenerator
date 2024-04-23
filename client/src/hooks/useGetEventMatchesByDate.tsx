import { MatchDate } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

export const useGetEventMatchesById = (eventId: string | undefined) => {
    const {
        data: eventMatchesById,
        isFetching: isFetchingEventMatchesById,
        refetch: refetchEventMatchesById,
    } = useQuery({
        queryKey: ['get-event-matches-byId', eventId],
        queryFn: async () => {
            if (eventId === undefined) {
                return
            }
            const { data }: { data: MatchDate[] } = await axios.get(
                `${import.meta.env.VITE_SERVER_URL}/match-dates/${eventId}`
            )
            if (data) {
                return data
            }
            return
        },
    })

    return {
        eventMatchesById,
        isFetchingEventMatchesById,
        refetchEventMatchesById,
    }
}
