import * as React from 'react'

import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Court } from '@/types/padel.types'

type SelectCourtProps = {
    eventCourts: Court[] | undefined
    setCourtFilter: React.Dispatch<React.SetStateAction<string>>
}

export function SelectCourt({ eventCourts, setCourtFilter }: SelectCourtProps) {
    return (
        <Select
            onValueChange={(value) => {
                setCourtFilter(value)
            }}
        >
            <SelectTrigger className="w-full">
                <SelectValue placeholder={`Select court`} />
            </SelectTrigger>
            <SelectContent>
                <SelectItem
                    value="all"
                    className="justify-center text-lg font-bold"
                >
                    All court
                </SelectItem>

                {eventCourts?.map((c, index) => {
                    return (
                        <SelectItem
                            key={index}
                            className="text-white"
                            value={c.id || 'all'}
                        >
                            {c.name}
                        </SelectItem>
                    )
                })}
            </SelectContent>
        </Select>
    )
}
