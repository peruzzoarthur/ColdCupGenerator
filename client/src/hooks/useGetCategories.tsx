import { axiosInstance } from '@/axiosInstance'
import { Category } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export const useGetCategories = () => {
    const { data: allCategories, isFetching } = useQuery({
        queryKey: ['get-all-categories'],
        queryFn: async () => {
            const { data }: { data: Category[] } =
                await axiosInstance.get('/categories')
            if (data) {
                return data
            }
            return
        },
    })
    const categoriesIds = allCategories?.map((item) => item.id)

    return { allCategories, isFetching, categoriesIds }
}
