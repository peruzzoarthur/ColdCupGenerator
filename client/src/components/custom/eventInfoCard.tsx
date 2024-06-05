import { cn } from '@/lib/utils'
import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { PadelEvent } from '@/types/padel.types'
import { ReactNode } from 'react'
import { Switch } from '../ui/switch'
import { Pencil } from 'lucide-react'
import { Button } from '../ui/button'

type EventInfoCardProps = React.ComponentProps<typeof Card> & {
    event: PadelEvent
    children?: ReactNode
    isAutoPopulateOn: boolean
    setIsAutoPopulateOn: React.Dispatch<React.SetStateAction<boolean>>
    setIsEditEventOn: React.Dispatch<React.SetStateAction<boolean>>
}

export function EventInfoCard({
    className,
    event,
    children,
    isAutoPopulateOn,
    setIsAutoPopulateOn,
    setIsEditEventOn,
}: EventInfoCardProps) {
    return (
        <Card className={cn('w-4/5 sm:w-[380px]', className)}>
            <CardHeader>
                <div className="flex justify-between">
                    <CardTitle>Event Info</CardTitle>

                    <Button
                        variant="ghost"
                        onClick={() => {
                            setIsEditEventOn((previousState) => !previousState)
                        }}
                    >
                        <Pencil className="h-3.5 w-3.5" />
                    </Button>
                </div>
                <CardDescription>
                    {`Matchmaking type: ${event.eventType}`}
                </CardDescription>
                <p className="text-sm text-muted-foreground">
                    {`First match: ${new Date(new Date(event.startDate).valueOf() + event.timeOfFirstMatch * 3600000).toLocaleString()}`}
                </p>
                <p className="text-sm text-muted-foreground">{`Last match: ${new Date(new Date(event.finishDate).valueOf() + event.timeOfLastMatch * 3600000).toLocaleString()}`}</p>
            </CardHeader>
            <CardContent className="grid gap-4">
                <div className="flex items-center p-4 space-x-4 border rounded-md ">
                    <div className="flex-1 space-y-1">
                        <div className="text-sm text-muted-foreground">
                            <p>
                                {`Tournament match slots: ${event.availableMatchDates}`}
                            </p>
                            <p>{`Total matches needed: ${event.totalMatches}`}</p>
                        </div>
                    </div>
                </div>
                <div className="flex justify-center">{children}</div>
                <div className="flex flex-row justify-between space-x-2 text-sm text-muted-foreground">
                    {isAutoPopulateOn ? (
                        <p className="">Autopopulate On</p>
                    ) : (
                        <p>Autopopulate Off</p>
                    )}
                    <Switch
                        className="items-end"
                        checked={isAutoPopulateOn}
                        onCheckedChange={() =>
                            setIsAutoPopulateOn(
                                (previousState) => !previousState
                            )
                        }
                    />
                </div>
            </CardContent>
        </Card>
    )
}
