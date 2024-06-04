import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import {
    ProfileDoublesTableData,
    profileDoublesColumns,
} from './profileDoublesTable/profileDoublesColumns'
import { ProfileDoublesTable } from './profileDoublesTable/profileDoublesTable'

type ProfileDoublesTableCardProps = {
    profileDoublesTableData: ProfileDoublesTableData[] | undefined
}
export function ProfileDoublesTableCard({
    profileDoublesTableData,
}: ProfileDoublesTableCardProps) {
    return (
        <Card className="overflow-hidden">
            <CardHeader className="p-7">
                <CardTitle>Doubles</CardTitle>
                <CardDescription>Your doubles list.</CardDescription>
            </CardHeader>
            <CardContent>
                {profileDoublesTableData && (
                    <ProfileDoublesTable
                        columns={profileDoublesColumns}
                        data={profileDoublesTableData}
                    />
                )}
            </CardContent>
        </Card>
    )
}
