import { Category, Double, PadelEvent } from '@/types/padel.types'
import { useQuery } from '@tanstack/react-query'
import axios from 'axios'
import { useState } from 'react'
// import { useState } from 'react'

type DoublesByCategory = {
    [category: string]: {
        category: Category
        doubles: Double[]
    }
}

export const useGetDoublesInEvent = (eventId: string) => {
    const [eventById, setEventById] = useState<PadelEvent | undefined>()

    const { data } = useQuery({
        queryKey: ['get-doubles-in-event', eventId],
        queryFn: async () => {
            const requestEventByIdDto = {
                id: eventId,
            }
            const { data: fetchEvent }: { data: PadelEvent } = await axios.post(
                'http://localhost:3000/events/event-by-id',
                requestEventByIdDto
            )
            setEventById(fetchEvent)

            if (!fetchEvent || !fetchEvent.eventDoubles) {
                return
            }

            const categoriesInEvent = fetchEvent.categories

            const doublesInEvent = fetchEvent.eventDoubles

            // console.log('Categories in event:')
            // console.log(categoriesInEvent)
            // console.log(`Doubles in event:`)
            // console.log(doublesInEvent)

            const doublesByCategoryId: DoublesByCategory = {}

            categoriesInEvent.forEach((category) => {
                doublesByCategoryId[category.id.toString()] = {
                    category: category,
                    doubles: [],
                }
            })

            doublesInEvent.forEach((eventDouble) => {
                if (!eventDouble.category || !eventDouble.double) {
                    console.log('ima dead')
                    return
                }
                const categoryId = eventDouble.category.id
                doublesByCategoryId[categoryId].doubles.push(eventDouble.double)
            })

            return doublesByCategoryId
        },
    })

    return { data, eventById }
}
