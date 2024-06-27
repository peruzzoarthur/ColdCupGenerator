import { useQuery } from '@tanstack/react-query'
import { PadelEvent } from '@/types/padel.types'
import { axiosInstance } from '@/axiosInstance'

type GetEventsProps = {
    showActiveEvents: boolean
    showRegisteringEvents: boolean
    showFinishedEvents: boolean
}

export const useGetEvents = ({
    showActiveEvents,
    showRegisteringEvents,
    showFinishedEvents,
}: GetEventsProps) => {
    const {
        data: allEvents,
        isFetching,
        refetch: refetchEvents,
    } = useQuery({
        queryKey: [
            'get-all-events',
            showActiveEvents,
            showRegisteringEvents,
            showFinishedEvents,
        ],
        queryFn: async () => {
            const { data }: { data: PadelEvent[] } =
                await axiosInstance.get('/events')
            if (data) {
                return data
            }
            return
        },
    })
    const eventsIds = allEvents?.map((e) => e.id)

    let filteredEvents = allEvents

    if (!showFinishedEvents && filteredEvents) {
        filteredEvents = filteredEvents.filter(
            (event) => event.isFinished === false
        )
        if (showActiveEvents && !showRegisteringEvents) {
            filteredEvents = filteredEvents.filter(
                (event) => event.isActive === true
            )
        } else if (!showActiveEvents && showRegisteringEvents) {
            filteredEvents = filteredEvents.filter(
                (event) => event.isActive === false
            )
        } else if (!showActiveEvents && !showRegisteringEvents) {
            filteredEvents = []
        }
    }

    if (showFinishedEvents && allEvents) {
        const onlyFinishedEvents = allEvents.filter(
            (event) => event.isFinished === true
        )
        const unfinishedEvents = allEvents.filter(
            (event) => event.isFinished === false
        )

        if (!showRegisteringEvents && showActiveEvents) {
            const activeEvents = unfinishedEvents.filter(
                (event) => event.isActive === true
            )
            filteredEvents = [...onlyFinishedEvents, ...activeEvents]
        }

        if (!showActiveEvents && showRegisteringEvents) {
            const registeringEvents = unfinishedEvents.filter(
                (event) => event.isActive === false
            )
            filteredEvents = [...onlyFinishedEvents, ...registeringEvents]
        }

        if (!showActiveEvents && !showRegisteringEvents) {
            filteredEvents = onlyFinishedEvents
        }
    }

    return { allEvents, isFetching, eventsIds, refetchEvents, filteredEvents }
}
