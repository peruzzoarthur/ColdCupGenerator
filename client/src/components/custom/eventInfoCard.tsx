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

type EventInfoCardProps = React.ComponentProps<typeof Card> & {
    event: PadelEvent
    children?: ReactNode
}

export function EventInfoCard({
    className,
    event,
    children,
}: EventInfoCardProps) {
    return (
        <Card className={cn('w-[380px]', className)}>
            <CardHeader>
                <CardTitle>Event Info</CardTitle>
                <CardDescription>
                    {`Matchmaking type: ${event.eventType}`}
                </CardDescription>
                <p>
                    {`First match: ${new Date(new Date(event.startDate).valueOf() + event.timeOfFirstMatch * 3600000).toLocaleString()}`}
                </p>
                <p>{`Last match: ${new Date(new Date(event.finishDate).valueOf() + event.timeOfLastMatch * 3600000).toLocaleString()}`}</p>
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
            </CardContent>
        </Card>
    )
}
