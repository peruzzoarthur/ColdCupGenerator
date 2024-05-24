import { useQuery } from '@tanstack/react-query'
import { PadelEvent } from '@/types/padel.types'
import { axiosInstance } from '@/axiosInstance'

export const useGetEventById = (eventId: string | undefined) => {
    const {
        data: eventById,
        isFetching: isFetchingEventById,
        refetch: refetchEventById,
    } = useQuery({
        queryKey: ['get-event-byId', eventId],
        queryFn: async () => {
            if (eventId === undefined) {
                return
            }
            const { data }: { data: PadelEvent } = await axiosInstance.get(
                `/events/${eventId}`
            )
            if (data) {
                return data
            }
            return
        },
        enabled: !!eventId,
    })

    const finishedMatches = eventById?.matches.filter(
        (m) => m.isFinished === true
    )
    const pendingMatches = eventById?.matches.filter(
        (m) => m.isFinished === false
    )

    return {
        eventById,
        isFetchingEventById,
        refetchEventById,
        finishedMatches,
        pendingMatches,
    }
}
