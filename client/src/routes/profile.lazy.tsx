import { ProfileForm } from '@/components/custom/profileForm'
import { useGetUserById } from '@/hooks/useGetUser'
import { createLazyFileRoute } from '@tanstack/react-router'

export const Route = createLazyFileRoute('/profile')({
    component: Profile,
})

function Profile() {
    const { user } = useGetUserById()

    return (
        <>
            <div className="flex flex-col items-center justify-center">
                <div className="p-2 mt-10 text-4xl">
                    Hello {user?.firstName}
                </div>
                {user && (
                    <img
                        className="w-1/3 rounded-full"
                        src={user.profileImage}
                    />
                )}
                <ProfileForm />
            </div>
        </>
    )
}
