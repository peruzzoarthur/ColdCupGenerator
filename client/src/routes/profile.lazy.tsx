import { ProfilePictureForm } from '@/components/custom/profilePictureForm'
import { useGetUserById } from '@/hooks/useGetUser'
import { Pencil1Icon } from '@radix-ui/react-icons'
import { createLazyFileRoute } from '@tanstack/react-router'
import { useState } from 'react'

export const Route = createLazyFileRoute('/profile')({
    component: Profile,
})

function Profile() {
    const { user, refetchUser } = useGetUserById()
    const [editOn, setEditOn] = useState<boolean>(false)

    return (
        <>
            <div className="flex flex-col items-center justify-center">
                <div className="p-2 mt-10 text-4xl">
                    Hello {user?.firstName}!
                </div>
                {user && (
                    <>
                        <div className="flex flex-row space-x-8">
                            <div className="flex flex-col items-center">
                                <img
                                    className="w-56 h-56 rounded-full"
                                    src={user.profileImage}
                                />
                                <Pencil1Icon
                                    className="mt-2 cursor-pointer"
                                    onClick={() => setEditOn(!editOn)}
                                />
                            </div>
                            {editOn ? (
                                <ProfilePictureForm refetchUser={refetchUser} />
                            ) : null}
                        </div>
                    </>
                )}
            </div>
        </>
    )
}
