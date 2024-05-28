import { axiosInstance } from '@/axiosInstance'
import { User } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'

export const useGetUserById = () => {
    const {
        data: user,
        isFetching: isFetchingUser,
        refetch: refetchUser,
    } = useQuery({
        queryKey: ['get-user'],
        queryFn: async (): Promise<User | null> => {
            const { data }: { data: User } =
                await axiosInstance.get(`/users/profile`)
            if (!data) {
                return null
            }

            return data
        },
        // enabled: !!email,
    })

    return { user, isFetchingUser, refetchUser }
}
