import {
    Card,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { Progress } from '../ui/progress'

type ProfileMatchesInfoCardProps = {
    totalMatchesWon: number | undefined
    totalMatchesPlayed: number | undefined
}
export function ProfileMatchesInfoCard({
    totalMatchesWon,
    totalMatchesPlayed,
}: ProfileMatchesInfoCardProps) {
    return (
        <Card>
            <CardHeader className="pb-2">
                <CardDescription>Matches won</CardDescription>
                <CardTitle className="text-4xl">{totalMatchesWon}</CardTitle>
            </CardHeader>
            <CardContent>
                <div className="text-xs text-muted-foreground">
                    {`played ${totalMatchesPlayed}
                                        matches.`}
                </div>
            </CardContent>
            <CardFooter>
                {totalMatchesWon && totalMatchesPlayed ? (
                    <Progress
                        value={(totalMatchesWon * 100) / totalMatchesPlayed}
                        aria-label="win/matches"
                    />
                ) : null}
            </CardFooter>
        </Card>
    )
}
