import {
    DropdownMenu,
    DropdownMenuCheckboxItem,
    DropdownMenuContent,
    DropdownMenuLabel,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'

import { Tabs, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { Button } from '../ui/button'
import { ListFilter } from 'lucide-react'
import { CheckedState } from '@radix-ui/react-checkbox'

type ProfileMatchesTabsProps = {
    matchesPeriod: string
    setMatchesPeriod: (value: React.SetStateAction<string>) => void
    showFinishedMatches: CheckedState
    setShowFinishedMatches: React.Dispatch<React.SetStateAction<CheckedState>>
    showPendingMatches: CheckedState
    setShowPendingMatches: React.Dispatch<React.SetStateAction<CheckedState>>
}
export function ProfileMatchesTabs({
    matchesPeriod,
    setMatchesPeriod,
    showFinishedMatches,
    setShowFinishedMatches,
    showPendingMatches,
    setShowPendingMatches,
}: ProfileMatchesTabsProps) {
    return (
        <Tabs
            defaultValue={matchesPeriod}
            onValueChange={(value) => setMatchesPeriod(value)}
        >
            <div className="flex items-center">
                <TabsList>
                    <TabsTrigger value="10">10 days</TabsTrigger>
                    <TabsTrigger value="month">Month</TabsTrigger>
                    <TabsTrigger value="year">Year</TabsTrigger>
                    <TabsTrigger value="all">All</TabsTrigger>
                </TabsList>
                <div className="flex items-center gap-2 ml-auto">
                    <DropdownMenu>
                        <DropdownMenuTrigger asChild>
                            <Button
                                variant="outline"
                                size="sm"
                                className="gap-1 text-sm h-7"
                            >
                                <ListFilter className="h-3.5 w-3.5" />
                                <span className="sr-only sm:not-sr-only">
                                    Filter
                                </span>
                            </Button>
                        </DropdownMenuTrigger>
                        <DropdownMenuContent align="end">
                            <DropdownMenuLabel>Filter by</DropdownMenuLabel>
                            <DropdownMenuSeparator />

                            <DropdownMenuCheckboxItem
                                checked={showFinishedMatches}
                                onCheckedChange={setShowFinishedMatches}
                            >
                                Finished
                            </DropdownMenuCheckboxItem>
                            <DropdownMenuCheckboxItem
                                checked={showPendingMatches}
                                onCheckedChange={setShowPendingMatches}
                            >
                                Pending
                            </DropdownMenuCheckboxItem>
                        </DropdownMenuContent>
                    </DropdownMenu>
                </div>
            </div>
        </Tabs>
    )
}
