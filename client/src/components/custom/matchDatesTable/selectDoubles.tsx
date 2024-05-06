import * as React from 'react'

import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Category } from '@/types/padel.types'

type SelectDoublesProps = {
    eventCategories: Category[] | undefined
    setDoublesFilter: React.Dispatch<React.SetStateAction<string>>
}

export function SelectDoubles({
    eventCategories,
    setDoublesFilter,
}: SelectDoublesProps) {
    return (
        <Select
            onValueChange={(value) => {
                setDoublesFilter(value)
            }}
        >
            <SelectTrigger className="w-full">
                <SelectValue placeholder={`Select doubles`} />
            </SelectTrigger>
            <SelectContent>
                <SelectItem
                    value="all"
                    className="justify-center text-lg font-bold"
                >
                    All doubles
                </SelectItem>
                {eventCategories?.map((c, index1) => {
                    return (
                        <>
                            <SelectGroup key={index1}>
                                {c.level} {c.type}
                                {c.eventDoubles?.map((d, index2) => {
                                    return (
                                        <SelectItem
                                            key={index2}
                                            value={d.double?.id || 'all'}
                                        >
                                            {`${d.double?.players[0].firstName} ${d.double?.players[0].lastName} / ${d.double?.players[1].firstName} ${d.double?.players[1].lastName}`}
                                        </SelectItem>
                                    )
                                })}
                            </SelectGroup>
                        </>
                    )
                })}
            </SelectContent>
        </Select>
    )
}
