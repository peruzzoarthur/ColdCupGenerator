import * as React from 'react'

import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Category } from '@/types/padel.types'

type SelectCategoryProps = {
    eventCategories: Category[] | undefined
    setCategoryFilter: React.Dispatch<React.SetStateAction<string>>
}

export function SelectCategory({
    eventCategories,
    setCategoryFilter,
}: SelectCategoryProps) {
    return (
        <Select
            onValueChange={(value) => {
                setCategoryFilter(value)
            }}
        >
            <SelectTrigger className="w-full">
                <SelectValue placeholder={`Select category`} />
            </SelectTrigger>
            <SelectContent>
                <SelectItem
                    value="all"
                    className="justify-center text-lg font-bold"
                >
                    Not set
                </SelectItem>

                {eventCategories?.map((c, index) => {
                    return (
                        <SelectItem
                            key={index}
                            className="text-white"
                            value={c.id || 'all'}
                        >
                            {c.level} {c.type}
                        </SelectItem>
                    )
                })}
            </SelectContent>
        </Select>
    )
}
