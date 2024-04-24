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
                    <p className="mt-1 mb-2">{`Matchmaking type: ${event.eventType}`}</p>
                    <p>
                        {`Starts at: ${new Date(event.startDate).toDateString()}`}
                    </p>
                    <p>
                        {`Finishes at: ${new Date(event.finishDate).toDateString()}`}
                    </p>
                </CardDescription>
            </CardHeader>
            <CardContent className="grid gap-4">
                <div className="flex items-center p-4 space-x-4 border rounded-md ">
                    <div className="flex-1 space-y-1">
                        <div className="text-sm text-muted-foreground">
                            <p>
                                {`Available game times: ${event.availableMatchDates}`}
                            </p>
                            <p>{`Total matches: ${event.totalMatches}`}</p>
                        </div>
                    </div>
                </div>
                <div className="flex justify-center">{children}</div>
            </CardContent>
        </Card>
    )
}