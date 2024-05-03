import {
    Select,
    SelectContent,
    SelectGroup,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Category, Match, MatchDate } from '@/types/padel.types'
// import { useGetById } from '@/hooks/useGetMatchDateById'
import { Card, CardDescription } from '../ui/card'
import { Button } from '../ui/button'
// import { useState } from 'react'
import { ArrowRightIcon, Cross2Icon } from '@radix-ui/react-icons'
import axios from 'axios'
import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'
import { useState } from 'react'

type AvailableMatchesSelectProps = {
    matchDates: MatchDate[] | undefined
    categories: Category[] | undefined
    matchDateIdState: string | undefined
    setMatchDateIdState: React.Dispatch<
        React.SetStateAction<string | undefined>
    >

    matchIdState: string | undefined
    setMatchIdState: React.Dispatch<React.SetStateAction<string | undefined>>
    setMatchAssignOn: React.Dispatch<React.SetStateAction<boolean>>
    refetchEventMatchDates: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<MatchDate[] | undefined, Error>>

    matchDateById: MatchDate | undefined
    isFetchingMatchDateById: boolean
    refetchMatchDateById: (
        options?: RefetchOptions | undefined
    ) => Promise<QueryObserverResult<MatchDate | undefined, Error>>
}
export function AvailableMatchesSelectCard({
    matchDates,
    categories,
    matchDateIdState,
    setMatchDateIdState,
    matchIdState,
    setMatchIdState,
    setMatchAssignOn,
    refetchEventMatchDates,
    // matchDatePlaceholderState,
    // setMatchDatePlaceholderState,
    // matchPlaceholderState,
    // setMatchPlaceholderState,
    matchDateById,
    isFetchingMatchDateById,
    refetchMatchDateById,
}: AvailableMatchesSelectProps) {
    const [matchPlaceholder, setMatchPlaceholder] =
        useState<string>('Select a match')

    const handleUpdateMatch = async (matchId: string, matchDateId: string) => {
        try {
            const activateEventDto = {
                matchDateId: matchDateId,
            }
            const { data: match }: { data: Match } = await axios.patch(
                `${import.meta.env.VITE_SERVER_URL}/matches/update-match-date/${matchId}`,
                activateEventDto
            )

            await refetchEventMatchDates()
            return match
        } catch (error) {
            return error
        }
    }
    return (
        <>
            {isFetchingMatchDateById ? null : (
                <>
                    {matchDateById ? (
                        <Card className="w-[380px] p-2">
                            <div className="flex justify-end">
                                <Cross2Icon
                                    className="items-end cursor-pointer"
                                    onClick={() => setMatchAssignOn(false)}
                                ></Cross2Icon>
                            </div>

                            <CardDescription>
                                Select date:
                                <Select>
                                    <SelectTrigger className="items-center justify-center ">
                                        <SelectValue
                                            placeholder={`
                                                    ${new Date(
                                                        matchDateById.start
                                                    ).toLocaleString()}
                                                    ${matchDateById.court.name}
                                                    `}
                                        />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {matchDates?.map((md, index) => (
                                            <SelectGroup key={index}>
                                                <div
                                                    className="flex flex-col"
                                                    key={index}
                                                >
                                                    <Button
                                                        className="items-start justify-start text-white bg-black text-start bg-opacity-70 hover:text-black"
                                                        onClick={() => {
                                                            setMatchDateIdState(
                                                                md.id ??
                                                                    undefined
                                                            )
                                                        }}
                                                        value={
                                                            md.id ?? undefined
                                                        }
                                                    >
                                                        {new Date(
                                                            md.start
                                                        ).toLocaleString()}{' '}
                                                        {md.court.name}
                                                    </Button>
                                                </div>
                                            </SelectGroup>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </CardDescription>

                            <CardDescription>
                                Select match
                                <Select>
                                    <SelectTrigger className="items-center justify-center ">
                                        <SelectValue
                                            placeholder={matchPlaceholder}
                                        />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {categories?.map((c, index1) => (
                                            <SelectGroup key={index1}>
                                                <SelectLabel>
                                                    {c.level} {c.type}
                                                </SelectLabel>
                                                {c.matches?.map((m, index2) => (
                                                    <div
                                                        className="flex flex-col"
                                                        key={index2}
                                                    >
                                                        {m.matchDate !== null &&
                                                        m.matchDate.id ===
                                                            matchDateById.id ? (
                                                            <>
                                                                <div className="flex flex-row">
                                                                    <ArrowRightIcon className="mt-3" />
                                                                    <Button
                                                                        className="items-start justify-start font-bold text-white bg-black text-start bg-opacity-20 hover:text-black"
                                                                        onClick={() => {
                                                                            setMatchPlaceholder(
                                                                                `Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `
                                                                            )
                                                                            setMatchIdState(
                                                                                m.id
                                                                            )
                                                                            refetchMatchDateById()
                                                                        }}
                                                                        value={
                                                                            m.id
                                                                        }
                                                                    >
                                                                        {`Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `}
                                                                    </Button>
                                                                </div>
                                                            </>
                                                        ) : (
                                                            <Button
                                                                className="items-start justify-start text-white bg-black text-start bg-opacity-70 hover:text-black"
                                                                onClick={() => {
                                                                    setMatchPlaceholder(
                                                                        `Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `
                                                                    )
                                                                    setMatchIdState(
                                                                        m.id
                                                                    )
                                                                    refetchMatchDateById()
                                                                }}
                                                                value={m.id}
                                                            >
                                                                {`Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `}
                                                            </Button>
                                                        )}
                                                    </div>
                                                ))}
                                            </SelectGroup>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </CardDescription>
                            <div className="flex justify-center mt-2">
                                {matchIdState && matchDateIdState && (
                                    <Button
                                        onClick={() => {
                                            console.log(
                                                `Calling for matchDate: ${matchDateIdState} && match: ${matchIdState}`
                                            )
                                            handleUpdateMatch(
                                                matchIdState,
                                                matchDateIdState
                                            )
                                            // setMatchAssignOn(false)
                                        }}
                                    >
                                        Update
                                    </Button>
                                )}
                            </div>
                        </Card>
                    ) : (
                        <Card className="w-[380px] p-2">
                            <div className="flex justify-end">
                                <Cross2Icon
                                    className="items-end cursor-pointer"
                                    onClick={() => setMatchAssignOn(false)}
                                ></Cross2Icon>
                            </div>

                            <CardDescription>
                                Select date:
                                <Select>
                                    <SelectTrigger className="items-center justify-center ">
                                        <SelectValue
                                            placeholder={`
                                                  Select date
                                                    `}
                                        />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {matchDates?.map((md, index) => (
                                            <SelectGroup key={index}>
                                                <div
                                                    className="flex flex-col"
                                                    key={index}
                                                >
                                                    <Button
                                                        className="items-start justify-start text-white bg-black text-start bg-opacity-70 hover:text-black"
                                                        onClick={() => {
                                                            console.log(md.id)
                                                            // setMatchDatePlaceholderState(
                                                            //     `${new Date(md.start).toLocaleString()} ${md.court.name}`
                                                            // )
                                                            setMatchDateIdState(
                                                                md.id ??
                                                                    undefined
                                                            )
                                                        }}
                                                        value={
                                                            md.id ?? undefined
                                                        }
                                                    >
                                                        {new Date(
                                                            md.start
                                                        ).toLocaleString()}{' '}
                                                        {md.court.name}
                                                    </Button>
                                                </div>
                                            </SelectGroup>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </CardDescription>

                            <CardDescription>
                                Select match
                                <Select>
                                    <SelectTrigger className="items-center justify-center ">
                                        <SelectValue
                                            placeholder={'Select a match'}
                                        />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {categories?.map((c, index1) => (
                                            <SelectGroup key={index1}>
                                                <SelectLabel>
                                                    {c.level} {c.type}
                                                </SelectLabel>
                                                {c.matches?.map((m, index2) => (
                                                    <div
                                                        className="flex flex-col"
                                                        key={index2}
                                                    >
                                                        <Button
                                                            className="items-start justify-start text-white bg-black text-start bg-opacity-70 hover:text-black"
                                                            onClick={() => {
                                                                console.log(
                                                                    m.id
                                                                )
                                                                // setMatchPlaceholderState(
                                                                //     `Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `
                                                                // )
                                                                setMatchIdState(
                                                                    m.id
                                                                )
                                                            }}
                                                            value={m.id}
                                                        >
                                                            {`Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `}
                                                        </Button>
                                                    </div>
                                                ))}
                                            </SelectGroup>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </CardDescription>
                            <div className="flex justify-center mt-2">
                                {matchIdState && matchDateIdState && (
                                    <Button
                                        onClick={() => {
                                            console.log(
                                                `Calling for matchDate: ${matchDateIdState} && match: ${matchIdState}`
                                            )
                                            handleUpdateMatch(
                                                matchIdState,
                                                matchDateIdState
                                            )
                                            // setMatchAssignOn(false)
                                        }}
                                    >
                                        Update
                                    </Button>
                                )}
                            </div>
                        </Card>
                    )}
                </>
            )}
        </>
    )
}
