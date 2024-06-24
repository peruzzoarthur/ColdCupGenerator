import { Card, CardContent, CardTitle } from '../ui/card'
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
import { Switch } from '../ui/switch'
import { Cross2Icon } from '@radix-ui/react-icons'

type ScheduleFiltersCardProps = {
    setScheduleFiltersOn: React.Dispatch<React.SetStateAction<boolean>>
    hasMatchFilter: boolean
    setHasMatchFilter: React.Dispatch<React.SetStateAction<boolean>>
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
    hasMatchFilter,
    setCategoryFilter,
    setCourtFilter,
    setDayFilter,
    setDoublesFilter,
    setHasMatchFilter,
    uniqueValuesForDays,
    categories,
    eventCategories,
}: ScheduleFiltersCardProps) => {
    return (
        <Card className="w-[340px] flex flex-col justify-center space-y-1 p-4 ">
            <div className="flex justify-end cursor-pointer">
                <Cross2Icon onClick={() => setScheduleFiltersOn(false)} />
            </div>
            <CardTitle className="pb-4">Matches filters</CardTitle>
            <CardContent className="w-56">
                <div className="grid items-end grid-flow-col-dense">
                    <Label>Only matches with defined date</Label>
                    <Switch
                        checked={hasMatchFilter}
                        onCheckedChange={setHasMatchFilter}
                    >
                        With date defined
                    </Switch>
                </div>
            </CardContent>
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

            <Label>Doubles</Label>

            <SelectDoubles
                eventCategories={categories}
                setDoublesFilter={setDoublesFilter}
                eventDoubles={eventDoubles}
            />

            <Label>Courts</Label>

            <SelectCourt
                eventCourts={eventCourts}
                setCourtFilter={setCourtFilter}
            />

            <Label>Categories</Label>

            <SelectCategory
                eventCategories={eventCategories}
                setCategoryFilter={setCategoryFilter}
            />
        </Card>
    )
}
