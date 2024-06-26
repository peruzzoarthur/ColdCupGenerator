import { CoolButton } from '@/components/custom/coolButton'
import { ProfileDashboard } from '@/components/custom/profileDashboard'
import { ProfilePictureForm } from '@/components/custom/profilePictureForm'
import { SignInAsPlayerForm } from '@/components/custom/signInAsPlayerForm'
import { Button } from '@/components/ui/button'
import { useGetUserById } from '@/hooks/useGetUser'
import { Pencil1Icon } from '@radix-ui/react-icons'
import { createFileRoute, redirect } from '@tanstack/react-router'
import { useState } from 'react'

export const Route = createFileRoute('/profile')({
    beforeLoad: async ({ context }) => {
        const { isLogged } = context.authentication
        if (!isLogged()) {
            throw redirect({ to: '/login' })
        }
    },
    component: Profile,
})

function Profile() {
    const { user, refetchUser } = useGetUserById()
    const [editPicture, setEditPicture] = useState<boolean>(false)
    const [editPlayerForm, setEditPlayerForm] = useState<boolean>(false)

    return (
        <>
            <div className="flex flex-col items-center justify-center">
                {user && !user.playerId && (
                    <>
                        <div className="p-2 mt-10 text-4xl">
                            Hello {user.firstName}!
                        </div>
                        <div className="flex flex-row space-x-8">
                            <div className="flex flex-col items-center">
                                {user.profileImage ? (
                                    <img
                                        className="w-56 h-56 rounded-full"
                                        src={user.profileImage}
                                    />
                                ) : (
                                    <img /> // add avatar here
                                )}
                                <Button
                                    variant="ghost"
                                    className="w-12 h-12 mt-2 rounded-full cursor-pointer"
                                    onClick={() => setEditPicture(!editPicture)}
                                >
                                    <Pencil1Icon />
                                </Button>
                            </div>
                            {editPicture ? (
                                <ProfilePictureForm refetchUser={refetchUser} />
                            ) : null}
                        </div>
                        {!editPlayerForm ? (
                            !user.playerId && (
                                <CoolButton
                                    containerClassName="w-2/3"
                                    borderClassName="bg-[radial-gradient(var(--green-200)_40%,transparent_10%)]"
                                    onClick={() => setEditPlayerForm(true)}
                                >
                                    Sign in as Player
                                </CoolButton>
                            )
                        ) : (
                            <SignInAsPlayerForm
                                user={user}
                                defaultValues={{
                                    categoryId: '',
                                    position: '',
                                    firstName: `${user.firstName}`,
                                    lastName: `${user.lastName}`,
                                }}
                                setEditPlayerForm={setEditPlayerForm}
                                refetchUser={refetchUser}
                            />
                        )}
                    </>
                )}
                {user && user.playerId && (
                    <ProfileDashboard refetchUser={refetchUser} user={user} />
                )}
            </div>
        </>
    )
}
