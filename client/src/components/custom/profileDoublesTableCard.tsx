import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import {
    ProfileDoublesTableProps,
    profileDoublesColumns,
} from './profileDoublesTable/profileDoublesColumns'
import { ProfileDoublesTable } from './profileDoublesTable/profileDoublesTable'

type ProfileDoublesTableCardProps = {
    profileDoublesTableProps: ProfileDoublesTableProps[] | undefined
}
export function ProfileDoublesTableCard({
    profileDoublesTableProps,
}: ProfileDoublesTableCardProps) {
    return (
        <Card className="overflow-hidden">
            <CardHeader className="p-7">
                <CardTitle>Doubles</CardTitle>
                <CardDescription>Your doubles list.</CardDescription>
            </CardHeader>
            <CardContent>
                {profileDoublesTableProps && (
                    <ProfileDoublesTable
                        columns={profileDoublesColumns}
                        data={profileDoublesTableProps}
                    />
                )}
            </CardContent>
        </Card>
    )
}
