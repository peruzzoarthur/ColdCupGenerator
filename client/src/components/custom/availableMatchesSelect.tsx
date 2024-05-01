import * as React from 'react'

import {
    Select,
    SelectContent,
    SelectGroup,
    SelectItem,
    SelectLabel,
    SelectTrigger,
    SelectValue,
} from '@/components/ui/select'
import { Category } from '@/types/padel.types'
import { useGetMatchDateById } from '@/hooks/useGetMatchDateById'
import { Card, CardHeader } from '../ui/card'
import { Button } from '../ui/button'
import { m } from 'framer-motion'

type AvailableMatchesSelectProps = {
    categories: Category[] | undefined
    matchDateId: string | undefined
}
export function AvailableMatchesSelect({
    categories,
    matchDateId,
}: AvailableMatchesSelectProps) {
    const { matchDateById } = useGetMatchDateById(matchDateId)
    return (
        <Card>
            <CardHeader>
                {matchDateById && (
                    <>
                        {matchDateById.id}
                        {matchDateById.start && (
                            <p className="text-white">{`Starts: ${new Date(matchDateById.start).toLocaleString()}`}</p>
                        )}
                        {matchDateById.finish && (
                            <p>{`Ends: ${new Date(matchDateById?.finish).toLocaleString()}`}</p>
                        )}
                    </>
                )}
            </CardHeader>
            <Select>
                <SelectTrigger className="w-[280px]">
                    <SelectValue placeholder="Select a match" />
                </SelectTrigger>
                <SelectContent>
                    {categories?.map((c, index1) => (
                        <SelectGroup key={index1}>
                            <SelectLabel key={index1 + 1}>
                                {c.level} {c.type}
                            </SelectLabel>
                            {c.matches?.map((m, index2) => (
                                <div className="flex flex-col">
                                    <Button
                                        onClick={() => console.log(m.id)}
                                        key={index2}
                                        value={m.id}
                                    >
                                        {`Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `}
                                        {/* <SelectItem value={m.id}></SelectItem> */}
                                    </Button>
                                </div>
                            ))}
                        </SelectGroup>
                    ))}
                </SelectContent>
            </Select>
        </Card>
    )
}
