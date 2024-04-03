import { useQuery } from '@tanstack/react-query'
import axios from 'axios'

enum CatType {
    ALL = 'ALL',
    F = 'F',
    M = 'M',
}

export type Category = {
    id: string
    level: number
    type: CatType
}

export const useGetCategories = () => {
    const { data: allCategories, isFetching } = useQuery({
        queryKey: ['get-all-categories'],
        queryFn: async () => {
            const { data }: { data: Category[] } = await axios.get(
                `${import.meta.env.VITE_SERVER_URL}/categories`
            )
            if (data) {
                return data
            }
            return
        },
    })
    const categoriesIds = allCategories?.map((item) => item.id)

    return { allCategories, isFetching, categoriesIds }
}
