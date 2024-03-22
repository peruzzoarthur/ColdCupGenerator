import { PadelEvent } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'
// import { useState } from 'react'

export const useGetDoublesInEvent = (eventId: string) => {
    // const [event, setEvent] = useState<PadelEvent | undefined>()

    const { data: categoriesInEventWithDoublesRegistered } = useQuery({
        queryKey: ['get-doubles-in-event', eventId],
        queryFn: async () => {
            const requestEventByIdDto = {
                id: eventId,
            }
            const { data: fetchEvent }: { data: PadelEvent } = await axios.post(
                'http://localhost:3000/events/event-by-id',
                requestEventByIdDto
            )
            // setEvent(fetchEvent)

            // const categories = event?.categories

            const doublesInEventIds = fetchEvent?.eventDoubles?.map(
                (doubles) => doubles.doubleId
            )

            console.log(doublesInEventIds)
            const filter = fetchEvent?.categories?.filter((cat) =>
                cat.doubles?.some((doubles) =>
                    doublesInEventIds?.includes(doubles.id)
                )
            )
            console.log(filter)
            return filter
        },
    })

    return { categoriesInEventWithDoublesRegistered }
}
