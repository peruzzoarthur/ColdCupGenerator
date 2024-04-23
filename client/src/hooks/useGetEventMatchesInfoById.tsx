import { PadelEvent } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

export const useGetEventMatchesInfoById = (eventId: string | undefined) => {
    const {
        data: eventMatchesInfoById,
        isFetching: isFetchingEventMatchesInfoById,
        refetch: refetchEventMatchesInfoById,
    } = useQuery({
        queryKey: ['get-event-matches-info-byId', eventId],
        queryFn: async () => {
            if (eventId === undefined) {
                return
            }
            const { data }: { data: PadelEvent } = await axios.get(
                `${import.meta.env.VITE_SERVER_URL}/events/event-info/${eventId}`
            )
            if (data) {
                return data
            }
            return
        },
    })

    return {
        eventMatchesInfoById,
        isFetchingEventMatchesInfoById,
        refetchEventMatchesInfoById,
    }
}
