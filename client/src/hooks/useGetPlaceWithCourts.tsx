import { Place } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

export const useGetPlaceWithCourts = (placeId: string | undefined | null) => {
    const {
        data: placeWithCourts,
        isFetching: isFetchingPlaceWithCourts,
        refetch: refetchPlaceWithCourts,
    } = useQuery({
        queryKey: ['get-courts-byPlaceId', placeId],
        queryFn: async () => {
            if (placeId === undefined) {
                return
            }
            if (placeId === null) {
                return
            }
            const { data }: { data: Place } = await axios.get(
                `${import.meta.env.VITE_SERVER_URL}/places/${placeId}`
            )
            if (data) {
                return data
            }
            return
        },
        enabled: !!placeId,
    })

    return {
        placeWithCourts,
        isFetchingPlaceWithCourts,
        refetchPlaceWithCourts,
    }
}
