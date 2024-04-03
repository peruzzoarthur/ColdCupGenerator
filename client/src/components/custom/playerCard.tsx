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
import axios from 'axios'
import { EraserIcon } from '@radix-ui/react-icons'
import { useToast } from '../ui/use-toast'
import { useState } from 'react'

type PlayerCardProps = React.ComponentProps<typeof Card> & {
    player: Player
    setError: React.Dispatch<React.SetStateAction<boolean>>
    setErrorMessage: React.Dispatch<React.SetStateAction<string | undefined>>
}

export function PlayerCard({
    className,
    player,
    setError,
    setErrorMessage,
}: PlayerCardProps) {
    const [reload, setReload] = useState(true)

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
            const data = await axios.delete(
                `${import.meta.env.VITE_SERVER_URL}/player/${id}`
            )

            toasted(player)
            setReload(false)

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
        <>
            {reload && (
                <>
                    <Card className={cn('w-[380px]', className)}>
                        <CardHeader>
                            <CardTitle>Player</CardTitle>
                            {/* <CardDescription>Add description.</CardDescription> */}
                        </CardHeader>
                        <CardContent className="grid gap-4">
                            <div className="flex items-center p-4 space-x-4 border rounded-md ">
                                <div className="flex-1 space-y-1">
                                    <p>
                                        {player.firstName} {player.lastName}
                                    </p>

                                    <div className="text-sm text-muted-foreground">
                                        {player.categories?.map(
                                            (cat, index) => (
                                                <p
                                                    key={index}
                                                >{`${cat.level} - ${cat.type}`}</p>
                                            )
                                        )}
                                    </div>
                                </div>
                            </div>
                        </CardContent>
                        <CardFooter>
                            <EraserIcon
                                onClick={async () =>
                                    await handleRemovePlayer(player)
                                }
                                className="justify-end w-4 h-4 mr-2 hover:cursor-pointer"
                            />
                        </CardFooter>
                    </Card>
                </>
            )}
        </>
    )
}
