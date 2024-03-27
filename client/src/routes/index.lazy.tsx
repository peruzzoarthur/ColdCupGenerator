import { Button } from '@/components/ui/button'
import { CatType, Category } from '@/types/padel.types'
import { createLazyFileRoute } from '@tanstack/react-router'
import axios, { AxiosResponse } from 'axios'

export const Route = createLazyFileRoute('/')({
    component: Index,
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

    const data: AxiosResponse<Category> = await axios.post(
        'http://localhost:3000/categories/',
        requestBody
    )

    console.log(data)
    return data
}

const handlePopulate = async () => {
    onPopulate(1)
    onPopulate(2)
    onPopulate(3)
    onPopulate(4)
}

function Index() {
    return (
        <>
            <div className="flex flex-col items-center justify-center">
                <div className="p-2 text-5xl">Hello!</div>
                <Button onClick={handlePopulate} className="w-2/3">
                    Populate categories
                </Button>
            </div>
        </>
    )
}
