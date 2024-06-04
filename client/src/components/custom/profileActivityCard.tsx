import {
    Card,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { FindPlayersDrawerDialog } from './findPlayersDrawerDialog'
import { Category, Player } from '@/types/padel.types'

type ProfileActivityCardProps = {
    allPlayers: Player[] | undefined
    allCategories: Category[] | undefined
}
export function ProfileActivityCard({
    allPlayers,
    allCategories,
}: ProfileActivityCardProps) {
    return (
        <Card className="sm:col-span-2" x-chunk="dashboard-05-chunk-0">
            <CardHeader className="pb-3">
                <CardTitle>Your activity</CardTitle>
                <CardDescription className="max-w-lg leading-relaxed text-balance">
                    Search for other players to play here.
                </CardDescription>
            </CardHeader>
            <CardFooter>
                <FindPlayersDrawerDialog
                    players={allPlayers}
                    categories={allCategories}
                />
            </CardFooter>
        </Card>
    )
}
