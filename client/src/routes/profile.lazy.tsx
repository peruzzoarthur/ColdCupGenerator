import { ProfilePictureForm } from '@/components/custom/profilePictureForm'
import { useGetUserById } from '@/hooks/useGetUser'
import { createLazyFileRoute } from '@tanstack/react-router'

export const Route = createLazyFileRoute('/profile')({
    component: Profile,
})

function Profile() {
    const { user, refetchUser } = useGetUserById()

    return (
        <>
            <div className="flex flex-col items-center justify-center">
                <div className="p-2 mt-10 text-4xl">
                    Hello {user?.firstName}
                </div>
                {user && (
                    <img
                        className="w-56 h-56 rounded-full"
                        src={user.profileImage}
                    />
                )}
                <ProfilePictureForm refetchUser={refetchUser} />
            </div>
        </>
    )
}
