import { CategoryGroup } from '@/types/padel.types'
import golden_trophy from '../../styles/png/golden_trophy.png'
import silver_trophy from '../../styles/png/silver_trophy.png'
import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'

type ProfileEventsAttendedCardProps = {
    eventsAttended: number | undefined
    firstPlaces: CategoryGroup[] | undefined
    secondPlaces: CategoryGroup[] | undefined
}
export function ProfileEventsAttendedCard({
    eventsAttended,
    firstPlaces,
    secondPlaces,
}: ProfileEventsAttendedCardProps) {
    return (
        <Card>
            <CardHeader className="pb-2">
                <CardDescription>Events attended</CardDescription>
                <CardTitle className="text-4xl">{eventsAttended}</CardTitle>
            </CardHeader>
            <CardContent>
                <div className="flex justify-start">
                    {firstPlaces
                        ? firstPlaces.map((cg) => (
                              <div
                                  className="relative group"
                                  key={`1_${cg.event?.id}`}
                              >
                                  <img
                                      src={golden_trophy}
                                      alt={`1st place at: ${cg.event?.name} [
                                      ${cg.category.level} ${cg.category.type}]`}
                                      className="w-12 h-12"
                                  />
                                  <span className="absolute px-2 py-1 mb-2 text-xs text-white transition-opacity bg-black rounded opacity-0 bottom-full w-max group-hover:opacity-100">
                                      1st place at: {cg.event?.name} [
                                      {cg.category.level} {cg.category.type}]
                                  </span>
                              </div>
                          ))
                        : null}

                    {secondPlaces
                        ? secondPlaces.map((cg) => (
                              <div
                                  className="relative group"
                                  key={`2_${cg.event?.id}`}
                              >
                                  <img
                                      src={silver_trophy}
                                      alt={`2nd place at: ${cg.event?.name} [
                                    ${cg.category.level} ${cg.category.type}]`}
                                      className="w-12 h-12"
                                  />
                                  <span className="absolute px-2 py-1 mb-2 text-xs text-white transition-opacity bg-black rounded opacity-0 bottom-full w-max group-hover:opacity-100">
                                      2nd place at: {cg.event?.name} [
                                      {cg.category.level} {cg.category.type}]
                                  </span>
                              </div>
                          ))
                        : null}
                </div>
            </CardContent>
        </Card>
    )
}
