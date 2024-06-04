import golden_trophy from '../../styles/png/golden_trophy.png'
import silver_trophy from '../../styles/png/silver_trophy.png'
import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'

type ProfileEventsAttendedCardProps = {
    eventsAttended: number | undefined
}
export function ProfileEventsAttendedCard({
    eventsAttended,
}: ProfileEventsAttendedCardProps) {
    return (
        <Card>
            <CardHeader className="pb-2">
                <CardDescription>Events attended</CardDescription>
                <CardTitle className="text-4xl">{eventsAttended}</CardTitle>
            </CardHeader>
            <CardContent>
                <div className="flex justify-start">
                    <div className="relative group">
                        <img
                            src={golden_trophy}
                            alt={"1st place at: ''"}
                            className="w-12 h-12"
                        />
                        <span className="absolute px-2 py-1 mb-2 text-xs text-white transition-opacity bg-black rounded opacity-0 bottom-full w-max group-hover:opacity-100">
                            1st place at: Event A
                        </span>
                    </div>
                    <div className="relative group">
                        <img
                            src={silver_trophy}
                            alt={"1st place at: ''"}
                            className="w-12 h-12"
                        />
                        <span className="absolute px-2 py-1 mb-2 text-xs text-white transition-opacity bg-black rounded opacity-0 bottom-full w-max group-hover:opacity-100">
                            2nd place at: Event B
                        </span>
                    </div>
                </div>
            </CardContent>
        </Card>
    )
}
