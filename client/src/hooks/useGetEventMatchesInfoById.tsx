import { axiosInstance } from '@/axiosInstance'
import { PadelEvent } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

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
            const { data }: { data: PadelEvent } = await axiosInstance.get(
                `/events/event-info/${eventId}`
            )
            if (data) {
                return data
            }
            return
        },
        enabled: !!eventId,
    })

    return {
        eventMatchesInfoById,
        isFetchingEventMatchesInfoById,
        refetchEventMatchesInfoById,
    }
}
