import { Double } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

export const useGetDoubles = () => {
    const {
        data: allDoubles,
        isFetching,
        refetch: refetchDoubles,
    } = useQuery({
        queryKey: ['get-all-doubles'],
        queryFn: async () => {
            const { data }: { data: Double[] } = await axios.get(
                'http://localhost:3000/doubles'
            )
            if (data) {
                return data
            }
            return
        },
    })
    const doublesIds = allDoubles?.map((item) => item.id)

    return { allDoubles, isFetching, doublesIds, refetchDoubles }
}
