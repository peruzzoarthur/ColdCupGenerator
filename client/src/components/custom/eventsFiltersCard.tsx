import { Card } from '../ui/card'
import { Label } from '../ui/label'
import { Separator } from '../ui/separator'
import { Switch } from '../ui/switch'

type EventFiltersCardProps = {
    showFinishedEvents: boolean
    setShowFinishedEvents: React.Dispatch<React.SetStateAction<boolean>>
    showActiveEvents: boolean
    setShowActiveEvents: React.Dispatch<React.SetStateAction<boolean>>
    showRegisteringEvents: boolean
    setShowRegisteringEvents: React.Dispatch<React.SetStateAction<boolean>>
}

export const EventsFiltersCard = ({
    showFinishedEvents,
    setShowFinishedEvents,
    showActiveEvents,
    setShowActiveEvents,
    showRegisteringEvents,
    setShowRegisteringEvents,
}: EventFiltersCardProps) => {
    return (
        <div className="flex justify-center h-full md:h-1/5">
            <Card className="grid grid-cols-1 p-4 space-y-1 justify-items-end">
                <div className="flex items-center space-x-2">
                    <Label>Finished Events 🔴</Label>
                    <Switch
                        checked={showFinishedEvents}
                        onCheckedChange={setShowFinishedEvents}
                    />
                </div>
                <Separator />
                <div className="flex items-center space-x-2">
                    <Label>Active Events 🟡</Label>
                    <Switch
                        checked={showActiveEvents}
                        onCheckedChange={setShowActiveEvents}
                    />
                </div>
                <Separator />
                <div className="flex items-center space-x-2">
                    <Label>Registering 🟢</Label>
                    <Switch
                        checked={showRegisteringEvents}
                        onCheckedChange={setShowRegisteringEvents}
                    />
                </div>
            </Card>
        </div>
    )
}
