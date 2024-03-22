import { useQuery } from '@tanstack/react-query'
import axios from 'axios'
import { Category, Double, PadelEvent, Player } from '@/types/padel.types'
import { useState } from 'react'

// export type doublesObject = {
//     categories: Category[]
//     doubles: { id: string; players: Player[]; categoryId: string }[]
// }

export type doublesByCategoryObject =
    | {
          players: Player[]
          id: string
          type: string
          level: number
          doubles?: Double[] | undefined
      }[]
    | null
    | undefined

export type categoriesWithDoubles = {
    category: {
        categoryInfo: Category
        doubles: { id: string; players: Player[] }[]
    }
}

export const useGetDoublesInEvent = (padelEvent: PadelEvent | undefined) => {
    const [event, setEvent] = useState<PadelEvent>()
    const [categories, setCategories] = useState<Category[]>([])
    // const [categoriesWithDoubles, setCategoriesWithDoubles] = useState<
    //     categoriesWithDoubles[]
    // >([])
    const [doubles, setDoubles] = useState<
        { id: string; players: Player[]; categoryId: string }[]
    >([])

    const { data: doublesInEvent, isFetching } = useQuery({
        queryKey: ['get-all-doubles-by-event', event, padelEvent],
        queryFn: async () => {
            if (padelEvent === undefined) {
                return null
            }

            setEvent(padelEvent)

            if (event === undefined) {
                return null
            }

            const allEventCategoriesIds = event.eventDoubles?.map(
                (d) => d.categoryId
            )

            if (allEventCategoriesIds === undefined) {
                return null
            }

            const newCategories: Category[] = []

            allEventCategoriesIds.map(async (id) => {
                const categoryRequestBody = {
                    id: id,
                }

                const { data: fetchCategory }: { data: Category } =
                    await axios.post(
                        'http://localhost:3000/categories/category-by-id',
                        categoryRequestBody
                    )

                const isIdPresent = newCategories.some(
                    (category) => category.id === fetchCategory.id
                )
                if (!isIdPresent) {
                    newCategories.push(fetchCategory)
                }

                return newCategories
            })

            setCategories(newCategories)

            /////////////////////////////////////////////////////////////////////////////////////////////////////////

            // todo add categoryId here... for rescuing the cat the double is registered

            const allDoublesWithIdsAndCategoryId = event.eventDoubles?.map(
                (d) => ({ doublesId: d.doubleId, categoryId: d.categoryId })
            )

            if (!allDoublesWithIdsAndCategoryId) {
                return null
            }

            const newDoubles: {
                id: string
                players: Player[]
                categoryId: string
            }[] = []

            allDoublesWithIdsAndCategoryId.map(async (d) => {
                const doublesRequestBody = {
                    id: d.doublesId,
                }

                const {
                    data: fetchDoubleForTesting,
                }: { data: { id: string; players: Player[] } } =
                    await axios.post(
                        'http://localhost:3000/doubles/doubles-by-id',
                        doublesRequestBody
                    )

                const idIsPresent = newDoubles.some(
                    (double) => double.id === fetchDoubleForTesting.id
                )

                if (!idIsPresent) {
                    newDoubles.push({
                        id: fetchDoubleForTesting.id,
                        players: fetchDoubleForTesting.players,
                        categoryId: d.categoryId,
                    })
                }

                return newDoubles
            })

            setDoubles(newDoubles)

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            const data = categories.map((category) => {
                const doublesInEvent = doubles
                    .filter((double) => double.categoryId === category.id)
                    .map((double) => double.players)
                return { ...category, doublesInEvent }
            })

            // const data: doublesObject = {
            //     categories: categories,
            //     doubles: doubles,
            // }

            return data
        },
    })

    return { doublesInEvent, isFetching }
}

// const { data }: { data: PadelEvent[] } = await axios.get(
//     'http://localhost:3000/events'
// )
// if (data) {
//     return data
// }
