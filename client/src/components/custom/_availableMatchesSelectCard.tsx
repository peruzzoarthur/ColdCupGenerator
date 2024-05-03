// import {
//     Select,
//     SelectContent,
//     SelectGroup,
//     SelectLabel,
//     SelectTrigger,
//     SelectValue,
// } from '@/components/ui/select'
// import { Category, Match, MatchDate } from '@/types/padel.types'
// import { useGetMatchDateById } from '@/hooks/useGetMatchDateById'
// import { Card, CardHeader } from '../ui/card'
// import { Button } from '../ui/button'
// import { useState } from 'react'
// import { Cross2Icon } from '@radix-ui/react-icons'
// import axios from 'axios'
// import { QueryObserverResult, RefetchOptions } from '@tanstack/react-query'

// type AvailableMatchesSelectProps = {
//     categories: Category[] | undefined
//     matchDateIdState: string | undefined
//     matchIdState: string | undefined
//     setMatchIdState: React.Dispatch<React.SetStateAction<string | undefined>>
//     setMatchAssignOn: React.Dispatch<React.SetStateAction<boolean>>
//     refetchEventMatchDates: (
//         options?: RefetchOptions | undefined
//     ) => Promise<QueryObserverResult<MatchDate[] | undefined, Error>>
// }
// export function AvailableMatchesSelectCard({
//     categories,
//     matchDateIdState,
//     matchIdState,
//     setMatchIdState,
//     setMatchAssignOn,
//     refetchEventMatchDates,
// }: AvailableMatchesSelectProps) {
//     const [placeholderState, setPlaceholderState] =
//         useState<string>('Select a match')
//     const { matchDateById } = useGetMatchDateById(matchDateIdState)
//     const handleUpdateMatch = async (matchId: string, matchDateId: string) => {
//         try {
//             const activateEventDto = {
//                 matchDateId: matchDateId,
//             }
//             const { data: match }: { data: Match } = await axios.patch(
//                 `${import.meta.env.VITE_SERVER_URL}/matches/update-match-date/${matchId}`,
//                 activateEventDto
//             )

//             await refetchEventMatchDates()
//             return match
//         } catch (error) {
//             return error
//         }
//     }
//     return (
//         <Card className="w-[380px]">
//             <div className="flex justify-center">
//                 <CardHeader>
//                     {matchDateById && (
//                         <>
//                             {/* {matchDateById.id} */}
//                             {matchDateById.start && (
//                                 <p className="text-xl text-white">{`${new Date(matchDateById.start).toLocaleString()}`}</p>
//                             )}
//                             {matchDateById.court && (
//                                 <p>{matchDateById.court.name}</p>
//                             )}
//                             {/* {matchDateById.finish && (
//                                 <p>{`Ends: ${new Date(matchDateById?.finish).toLocaleString()}`}</p>
//                             )} */}
//                         </>
//                     )}
//                 </CardHeader>
//                 <Cross2Icon
//                     className="items-end cursor-pointer"
//                     onClick={() => setMatchAssignOn(false)}
//                 ></Cross2Icon>
//             </div>
//             <Select>
//                 <SelectTrigger className="items-center justify-center ">
//                     <SelectValue placeholder={placeholderState} />
//                 </SelectTrigger>
//                 <SelectContent>
//                     {categories?.map((c, index1) => (
//                         <SelectGroup key={index1}>
//                             <SelectLabel>
//                                 {c.level} {c.type}
//                             </SelectLabel>
//                             {c.matches?.map((m, index2) => (
//                                 <div className="flex flex-col" key={index2}>
//                                     <Button
//                                         className="items-start justify-start text-white bg-black text-start bg-opacity-70 hover:text-black"
//                                         onClick={() => {
//                                             console.log(m.id)
//                                             setPlaceholderState(
//                                                 `Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `
//                                             )
//                                             setMatchIdState(m.id)
//                                         }}
//                                         value={m.id}
//                                     >
//                                         {`Match #${m.number} ${m.doubles[0].players[0].firstName} / ${m.doubles[0].players[1].firstName} x ${m.doubles[1].players[0].firstName} / ${m.doubles[1].players[1].firstName} `}
//                                     </Button>
//                                 </div>
//                             ))}
//                         </SelectGroup>
//                     ))}
//                 </SelectContent>
//             </Select>
//             <div className="flex justify-center mt-2">
//                 {matchIdState && matchDateIdState && (
//                     <Button
//                         onClick={() => {
//                             console.log(
//                                 `Calling for matchDate: ${matchDateIdState} && match: ${matchIdState}`
//                             )
//                             handleUpdateMatch(matchIdState, matchDateIdState)
//                             setMatchAssignOn(false)
//                         }}
//                     >
//                         Update
//                     </Button>
//                 )}
//             </div>
//         </Card>
//     )
// }
