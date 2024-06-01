import { Invitation } from '@/types/padel.types'
import { Separator } from '@radix-ui/react-select'

type InvitationBlockProps = {
    playerId: string
    invitation: Invitation
}
export const InvitationBlock = ({
    playerId,
    invitation,
}: InvitationBlockProps) => {
    return (
        <>
            {invitation.inviteType === 'DOUBLES' && (
                <>
                    <p className="font-semibold">{invitation.inviteType}</p>
                    <p>{playerId}</p>
                    <Separator className="my-2" />
                </>
            )}
            {invitation.inviteType === 'EVENT' && (
                <>
                    <p className="font-semibold">{invitation.inviteType}</p>
                    <p>eventId...</p>
                    <Separator className="my-2" />
                </>
            )}
            {invitation.inviteType === 'MATCH' && (
                <>
                    <p className="font-semibold">{invitation.inviteType}</p>
                    <p>matchInfo...</p>
                    <Separator className="my-2" />
                </>
            )}
        </>
    )
}
