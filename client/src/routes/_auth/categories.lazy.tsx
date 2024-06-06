import { axiosInstance } from '@/axiosInstance'
import { Button } from '@/components/ui/button'
import { CatType, Category } from '@/types/padel.types'
import { createLazyFileRoute } from '@tanstack/react-router'
import { AxiosResponse } from 'axios'

export const Route = createLazyFileRoute('/_auth/categories')({
    component: Categories,
})

type CreateCategory = {
    level: number
    type: CatType
}

const onPopulate = async (level: number) => {
    const requestBody: CreateCategory = {
        level: level,
        type: 'ALL' as CatType,
    }

    const data: AxiosResponse<Category> = await axiosInstance.post(
        '/categories/',
        requestBody
    )

    return data
}

const handlePopulate = async () => {
    await onPopulate(1)
    await onPopulate(2)
    await onPopulate(3)
    await onPopulate(4)
}

function Categories() {
    return (
        <>
            <div className="flex flex-col items-center justify-center">
                <div className="p-2 text-5xl">Categories!</div>
                <Button onClick={handlePopulate} className="w-2/3">
                    Populate categories
                </Button>
            </div>
        </>
    )
}
