import { useQuery } from '@tanstack/react-query'
import { PadelEvent } from '@/types/padel.types'
import { axiosInstance } from '@/axiosInstance'

export const useGetEvents = () => {
    const {
        data: allEvents,
        isFetching,
        refetch: refetchEvents,
    } = useQuery({
        queryKey: ['get-all-events'],
        queryFn: async () => {
            const { data }: { data: PadelEvent[] } =
                await axiosInstance.get('/events')
            if (data) {
                return data
            }
            return
        },
    })
    const eventsIds = allEvents?.map((item) => item.id)

    return { allEvents, isFetching, eventsIds, refetchEvents }
}
