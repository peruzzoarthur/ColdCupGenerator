import * as React from 'react'

import { Button } from '@/components/ui/button'
import {
    Dialog,
    DialogContent,
    DialogDescription,
    DialogHeader,
    DialogTitle,
    DialogTrigger,
} from '@/components/ui/dialog'
import {
    Drawer,
    DrawerClose,
    DrawerContent,
    DrawerDescription,
    DrawerFooter,
    DrawerHeader,
    DrawerTitle,
    DrawerTrigger,
} from '@/components/ui/drawer'
import { useMediaQuery } from 'usehooks-ts'
import { Category, Player } from '@/types/padel.types'
import { PlayerSelectByCategory } from './playerSelectByCategory'

type FindPlayersDrawerDialogProps = {
    players: Player[] | undefined
    categories: Category[] | undefined
}

export function FindPlayersDrawerDialog({
    players,
    categories,
}: FindPlayersDrawerDialogProps) {
    const [open, setOpen] = React.useState(false)

    const isDesktop = useMediaQuery('(min-width: 768px)')

    if (isDesktop) {
        return (
            <Dialog open={open} onOpenChange={setOpen}>
                <DialogTrigger asChild>
                    <Button>Invite player</Button>
                </DialogTrigger>
                <DialogContent className="sm:max-w-[425px] flex flex-col items-center">
                    <DialogHeader>
                        <DialogTitle>Players</DialogTitle>
                        <DialogDescription>
                            Select a player and choose the type of invitation to
                            send.
                        </DialogDescription>
                    </DialogHeader>
                    <PlayerSelectByCategory
                        players={players}
                        categories={categories}
                    />
                </DialogContent>
            </Dialog>
        )
    }

    return (
        <Drawer open={open} onOpenChange={setOpen}>
            <DrawerTrigger asChild>
                <Button>Invite player</Button>
            </DrawerTrigger>
            <DrawerContent className="flex items-center">
                <DrawerHeader className="text-left">
                    <DrawerTitle>Players</DrawerTitle>
                    <DrawerDescription>
                        Select player to make an invitation.
                    </DrawerDescription>
                </DrawerHeader>
                <PlayerSelectByCategory
                    players={players}
                    categories={categories}
                />
                <DrawerFooter className="pt-2">
                    <DrawerClose asChild>
                        <Button variant="outline" className="mt-2">
                            Cancel
                        </Button>
                    </DrawerClose>
                </DrawerFooter>
            </DrawerContent>
        </Drawer>
    )
}
