import { MatchDate } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

export const useGetEventMatchDates = (eventId: string | undefined) => {
    const {
        data: eventMatchDates,
        isFetching: isFetchingEventMatchDates,
        refetch: refetchEventMatchDates,
    } = useQuery({
        queryKey: ['get-event-matchesDates', eventId],
        queryFn: async () => {
            if (eventId === undefined) {
                return
            }
            const { data }: { data: MatchDate[] } = await axios.get(
                `${import.meta.env.VITE_SERVER_URL}/match-dates/by-event/${eventId}`
            )
            if (data) {
                return data
            }
            return
        },
    })

    return {
        eventMatchDates,
        isFetchingEventMatchDates,
        refetchEventMatchDates,
    }
}
