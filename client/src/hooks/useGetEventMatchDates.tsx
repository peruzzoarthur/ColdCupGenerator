import { axiosInstance } from '@/axiosInstance'
import { MatchDate } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

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
            const { data }: { data: MatchDate[] } = await axiosInstance.get(
                `/match-dates/by-event/${eventId}`
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
