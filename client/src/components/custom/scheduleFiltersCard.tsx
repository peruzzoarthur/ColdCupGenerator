import { Card, CardTitle } from '../ui/card'
import { Label } from '../ui/label'
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from '../ui/select'
import { SelectDoubles } from './matchDatesTable/selectDoubles'
import { SelectCourt } from './matchDatesTable/selectCourt'
import { SelectCategory } from './matchDatesTable/selectCategory'
import { Category, Court, EventDouble } from '@/types/padel.types'
import { Cross2Icon } from '@radix-ui/react-icons'
import { Button } from '../ui/button'

type ScheduleFiltersCardProps = {
    setScheduleFiltersOn: React.Dispatch<React.SetStateAction<boolean>>
    dayFilter: string
    setDayFilter: React.Dispatch<React.SetStateAction<string>>
    setDoublesFilter: React.Dispatch<React.SetStateAction<string>>
    setCourtFilter: React.Dispatch<React.SetStateAction<string>>
    setCategoryFilter: React.Dispatch<React.SetStateAction<string>>
    eventCourts: Court[] | undefined
    eventDoubles: EventDouble[] | undefined
    categories: Category[] | undefined
    eventCategories: Category[] | undefined

    uniqueValuesForDays: number[]
}
export const ScheduleFiltersCard = ({
    setScheduleFiltersOn,
    dayFilter,
    eventCourts,
    eventDoubles,
    setCategoryFilter,
    setCourtFilter,
    setDayFilter,
    setDoublesFilter,
    uniqueValuesForDays,
    categories,
    eventCategories,
}: ScheduleFiltersCardProps) => {
    return (
        <Card className="w-[380px] flex flex-col justify-center space-y-2 p-6 ">
            <div className="flex justify-end cursor-pointer">
                <Button
                    variant="ghost"
                    onClick={() => setScheduleFiltersOn(false)}
                >
                    <Cross2Icon />
                </Button>
            </div>
            <CardTitle className="pb-4">Filters</CardTitle>

            <Label>Days</Label>
            <Select value={dayFilter} onValueChange={setDayFilter}>
                <SelectTrigger>
                    <SelectValue placeholder="Select day to display" />
                </SelectTrigger>
                <SelectContent>
                    <SelectItem value="all">All</SelectItem>
                    {uniqueValuesForDays.map((d, index) => (
                        <SelectItem key={index} value={d.toString()}>
                            {d}
                        </SelectItem>
                    ))}
                </SelectContent>
            </Select>

            <Label>Courts</Label>
            <SelectCourt
                eventCourts={eventCourts}
                setCourtFilter={setCourtFilter}
            />

            <Label>Doubles</Label>
            <SelectDoubles
                eventCategories={categories}
                setDoublesFilter={setDoublesFilter}
                eventDoubles={eventDoubles}
            />

            <Label>Categories</Label>

            <SelectCategory
                eventCategories={eventCategories}
                setCategoryFilter={setCategoryFilter}
            />
        </Card>
    )
}
