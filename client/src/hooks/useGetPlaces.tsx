import { Place } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

export const useGetPlaces = () => {
    const { data: allPlaces, isFetching } = useQuery({
        queryKey: ['get-all-places'],
        queryFn: async () => {
            const { data }: { data: Place[] } = await axios.get(
                'http://localhost:3000/places'
            )
            if (data) {
                return data
            }
            return
        },
    })
    const placesIds = allPlaces?.map((item) => item.id)

    return { allPlaces, isFetching, placesIds }
}
