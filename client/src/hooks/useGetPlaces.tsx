import { axiosInstance } from '@/axiosInstance'
import { Place } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export const useGetPlaces = () => {
    const { data: allPlaces, isFetching } = useQuery({
        queryKey: ['get-all-places'],
        queryFn: async () => {
            const { data }: { data: Place[] } =
                await axiosInstance.get('/places')
            if (data) {
                return data
            }
            return
        },
    })
    const placesIds = allPlaces?.map((item) => item.id)

    return { allPlaces, isFetching, placesIds }
}
