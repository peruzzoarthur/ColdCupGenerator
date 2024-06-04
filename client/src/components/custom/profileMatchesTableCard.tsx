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
    matchesPeriod: string
    profileMatchesTableData: ProfileMatchesTableData[] | undefined
}
export function ProfileMatchesTableCard({
    matchesPeriod,
    profileMatchesTableData,
}: ProfileMatchesTableCardProps) {
    return (
        <Card className="overflow-hidden">
            <CardHeader className="p-7">
                <CardTitle>Matches</CardTitle>
                <CardDescription>Your matches list.</CardDescription>
                <p>{matchesPeriod}</p>
            </CardHeader>
            <CardContent>
                {' '}
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
