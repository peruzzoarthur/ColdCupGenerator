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
                `${import.meta.env.VITE_SERVER_URL}/events`
            )
            if (data) {
                return data
            }
            return
        },
    })
    const eventsIds = allEvents?.map((item) => item.id)
    console.log(import.meta.env.VITE_SERVER_URL)

    return { allEvents, isFetching, eventsIds, refetchEvents }
}
