import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import {
    ProfileMatchesTableData,
    profileMatchesColumns,
} from './profileMatchesTable/profileMatchesColumns'
import { ProfileMatchesTable } from './profileMatchesTable/profileMatchesTable'

type ProfileMatchesTableCardProps = {
    profileMatchesTableData: ProfileMatchesTableData[] | undefined
}
export function ProfileMatchesTableCard({
    profileMatchesTableData,
}: ProfileMatchesTableCardProps) {
    return (
        <Card className="overflow-hidden">
            <CardHeader className="p-7">
                <CardTitle>Matches</CardTitle>
                <CardDescription>Your matches list.</CardDescription>
            </CardHeader>
            <CardContent>
                {profileMatchesTableData && (
                    <ProfileMatchesTable
                        columns={profileMatchesColumns}
                        data={profileMatchesTableData}
                    />
                )}
            </CardContent>
        </Card>
    )
}
