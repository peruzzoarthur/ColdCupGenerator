import { axiosInstance } from '@/axiosInstance'
import { PadelEvent } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export const useGetEventRequestsById = (eventId: string | undefined) => {
    const {
        data: eventRequestsById,
        isFetching: isFetchingEventRequestsById,
        refetch: refetchEventRequestsById,
    } = useQuery({
        queryKey: ['get-eventRequests-by-id', eventId],
        queryFn: async () => {
            if (eventId === undefined) {
                return
            }
            const { data }: { data: PadelEvent } = await axiosInstance.get(
                `/events/requests/${eventId}`
            )
            if (data) {
                return data
            }
            return
        },
        enabled: !!eventId,
    })

    return {
        eventRequestsById,
        isFetchingEventRequestsById,
        refetchEventRequestsById,
    }
}
