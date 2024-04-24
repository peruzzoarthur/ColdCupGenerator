import { Place } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

export const useGetPlaceCourts = (placeId: string | undefined | null) => {
    const {
        data: placeCourts,
        isFetching: isFetchingPlaceCourts,
        refetch: refetchPlaceCourts,
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
                return data.courts
            }
            return
        },
        enabled: !!placeId,
    })

    return {
        placeCourts,
        isFetchingPlaceCourts,
        refetchPlaceCourts,
    }
}
