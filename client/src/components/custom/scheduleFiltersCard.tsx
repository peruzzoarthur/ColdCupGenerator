import { Card, CardTitle } from '../ui/card'
import { Label } from '../ui/label'
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from '../ui/select'
import { SelectDoubles } from './scheduleTable/selectDoubles'
import { SelectCourt } from './scheduleTable/selectCourt'
import { SelectCategory } from './scheduleTable/selectCategory'
import { Category, Court, EventDouble } from '@/types/padel.types'
import { Cross2Icon } from '@radix-ui/react-icons'
import { Button } from '../ui/button'
import { Switch } from '../ui/switch'
import { Separator } from '../ui/separator'

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
    hasMatchFilter: boolean
    setHasMatchFilter: React.Dispatch<React.SetStateAction<boolean>>
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
    hasMatchFilter,
    setHasMatchFilter,
}: ScheduleFiltersCardProps) => {
    return (
        <div className="flex items-center justify-center w-full mt-2 mb-2">
            <Card className="w-11/12 lg:w-[480px]  p-6 space-y-2">
                <div className="flex items-center justify-between">
                    <CardTitle>Filters</CardTitle>
                    <div className="cursor-pointer">
                        <Button
                            variant="ghost"
                            onClick={() => setScheduleFiltersOn(false)}
                        >
                            <Cross2Icon />
                        </Button>
                    </div>
                </div>
                <Separator />

                <div className="flex items-center">
                    <Label className="p-4">
                        Only matches with date defined
                    </Label>
                    <Switch
                        checked={hasMatchFilter}
                        onCheckedChange={setHasMatchFilter}
                    />
                </div>
                <Separator />

                <div className="grid items-center grid-cols-2">
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
                </div>
                <Separator />
                <div className="grid items-center grid-cols-2">
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
                </div>
            </Card>
        </div>
    )
}
