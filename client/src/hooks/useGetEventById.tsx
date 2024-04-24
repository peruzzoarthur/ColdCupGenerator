import { useQuery } from '@tanstack/react-query'
import axios from 'axios'
import { PadelEvent } from '@/types/padel.types'

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
            const { data }: { data: PadelEvent } = await axios.get(
                `${import.meta.env.VITE_SERVER_URL}/events/${eventId}`
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

// export const useGetEventMatches = (eventId: string) => {
//     const {
//         data: eventMatches,
//         isFetching: isFetchingMatches,
//         refetch: refetchEventMatches,
//     } = useQuery({
//         queryKey: ['get-event-matches', eventId],
//         queryFn: async () => {
//             const { data }: { data: PadelEvent } = await axios.get(
//                 `${import.meta.env.VITE_SERVER_URL}/events/${eventId}`
//             )
//             if (data) {
//                 return data.matches
//             }
//             return
//         },
//     })

//     const finishedMatches = eventMatches?.filter((m) => m.isFinished === true)
//     const pendingMatches = eventMatches?.filter((m) => m.isFinished === false)

//     return {
//         eventMatches,
//         isFetchingMatches,
//         refetchEventMatches,
//         finishedMatches,
//         pendingMatches,
//     }
// }
