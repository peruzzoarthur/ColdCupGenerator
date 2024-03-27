import { useQuery } from '@tanstack/react-query'
import axios from 'axios'
import { PadelEvent } from '@/types/padel.types'

export const useGetEvents = () => {
    const {
        data: allEvents,
        isFetching,
        refetch: refetchEvents,
    } = useQuery({
        queryKey: ['get-all-events'],
        queryFn: async () => {
            const { data }: { data: PadelEvent[] } = await axios.get(
                'http://localhost:3000/events'
            )
            if (data) {
                return data
            }
            return
        },
    })
    const eventsIds = allEvents?.map((item) => item.id)

    return { allEvents, isFetching, eventsIds, refetchEvents }
}
