import {
    Card,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { Invitation } from '@/types/padel.types'
import { Button } from '../ui/button'
import { ChevronLeft, ChevronRight, Copy } from 'lucide-react'
import { InvitationBlock } from './invitationBlock'
import {
    Pagination,
    PaginationContent,
    PaginationItem,
} from '@/components/ui/pagination'

type ProfileInvitesCardProps = {
    playerInvitations:
        | {
              playerId: string
              invitations: Invitation[]
          }
        | undefined
}
export function ProfileInvitesCard({
    playerInvitations,
}: ProfileInvitesCardProps) {
    return (
        <Card className="overflow-hidden">
            <CardHeader className="flex flex-row items-start bg-muted/50">
                <div className="grid gap-0.5">
                    <CardTitle className="flex items-center gap-2 text-lg group">
                        Invites
                        <Button
                            size="icon"
                            variant="outline"
                            className="w-6 h-6 transition-opacity opacity-0 group-hover:opacity-100"
                        >
                            <Copy className="w-3 h-3" />
                            <span className="sr-only">
                                Handle invitations here
                            </span>
                        </Button>
                    </CardTitle>
                    <CardDescription>your invitations</CardDescription>
                </div>
            </CardHeader>
            <CardContent className="p-6 text-sm">
                <div className="grid gap-3">
                    {playerInvitations &&
                    playerInvitations.invitations.length !== 0 ? (
                        playerInvitations?.invitations.map((i, index) => (
                            <div key={index}>
                                <InvitationBlock
                                    playerId={playerInvitations.playerId}
                                    invitation={i}
                                />
                            </div>
                        ))
                    ) : (
                        <div>you have no invites yet</div>
                    )}
                </div>
            </CardContent>
            <CardFooter className="flex flex-row items-center px-6 py-3 border-t bg-muted/50">
                <div className="text-xs text-muted-foreground">
                    I need to do pagination for the invites get all route.
                </div>
                <Pagination className="w-auto ml-auto mr-0">
                    <PaginationContent>
                        <PaginationItem>
                            <Button
                                size="icon"
                                variant="outline"
                                className="w-6 h-6"
                            >
                                <ChevronLeft className="h-3.5 w-3.5" />
                                <span className="sr-only">Previous Order</span>
                            </Button>
                        </PaginationItem>
                        <PaginationItem>
                            <Button
                                size="icon"
                                variant="outline"
                                className="w-6 h-6"
                            >
                                <ChevronRight className="h-3.5 w-3.5" />
                                <span className="sr-only">Next Order</span>
                            </Button>
                        </PaginationItem>
                    </PaginationContent>
                </Pagination>
            </CardFooter>
        </Card>
    )
}
