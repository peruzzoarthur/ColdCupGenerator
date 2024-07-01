import { cn } from '@/lib/utils'
import {
    Card,
    CardContent,
    // CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { Player } from '@/types/padel.types'
import { useToast } from '../ui/use-toast'
import { axiosInstance } from '@/axiosInstance'
import { Button } from '../ui/button'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'

type PlayerCardProps = React.ComponentProps<typeof Card> & {
    player: Player
    setError: React.Dispatch<React.SetStateAction<boolean>>
    setErrorMessage: React.Dispatch<React.SetStateAction<string | undefined>>
    refetchAllPlayers: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<Player[] | undefined, Error>>
}

export function PlayerCard({
    className,
    player,
    setError,
    setErrorMessage,
    refetchAllPlayers,
}: PlayerCardProps) {
    const { toast } = useToast()
    const toasted = (player: Player) => {
        toast({
            title: 'Success! 🙌',
            description: `Deleted ${player.firstName} ${player.lastName} position: ${player.position}.`,
            className: 'bg-red-600 bg-opacity-60 text-white',
        })
    }

    const handleDelete = async (id: string) => {
        try {
            const data = await axiosInstance.delete(`/player/${id}`)

            toasted(player)
            await refetchAllPlayers()
            return data
        } catch (error) {
            setError(true)
            setErrorMessage('Error deleting user')
        }
    }
    const handleRemovePlayer = async (player: Player) => {
        handleDelete(player.id)
    }

    return (
        <Card className={cn('w-[240px] md:w-[280px] lg:w-[340px]', className)}>
            <CardHeader>
                <CardTitle>Player</CardTitle>
            </CardHeader>
            <CardContent className="grid gap-4">
                <div className="flex items-center p-4 space-x-4 border rounded-md ">
                    <div className="flex-1 space-y-1">
                        <p>
                            {player.firstName} {player.lastName}
                        </p>

                        <div className="text-sm text-muted-foreground">
                            <p>{`${player.category?.level} - ${player.category?.type}`}</p>
                        </div>
                    </div>
                </div>
            </CardContent>
            <CardFooter>
                <Button
                    variant="destructive"
                    onClick={async () => await handleRemovePlayer(player)}
                    className="justify-end"
                >
                    Remove
                </Button>
            </CardFooter>
        </Card>
    )
}
