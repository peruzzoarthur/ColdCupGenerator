import * as React from 'react'

import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Category } from '@/types/padel.types'

type SelectCategoriesProps = {
    allCategories: Category[] | undefined
}
export const SelectCategories: React.FC<SelectCategoriesProps> = ({
    allCategories,
}) => {
    return (
        <>
            <Select>
                <SelectTrigger className="w-[280px]">
                    <SelectValue placeholder="Select a category" />
                </SelectTrigger>
                <SelectContent>
                    <SelectGroup>
                        <SelectLabel>ALL</SelectLabel>
                        {allCategories?.map((c, index) => (
                            <SelectItem value={c.id} key={index}>
                                {c.level}
                            </SelectItem>
                        ))}
                    </SelectGroup>
                </SelectContent>
            </Select>
        </>
    )
}
