import {
    Card,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { ErrorResponse, EventRequest } from '@/types/padel.types'
import { Button } from '../ui/button'
import { Check, ChevronLeft, ChevronRight, Copy, X } from 'lucide-react'
import {
    Pagination,
    PaginationContent,
    PaginationItem,
} from '@/components/ui/pagination'
import { axiosInstance } from '@/axiosInstance'
import { useToast } from '../ui/use-toast'
import axios, { AxiosError } from 'axios'
import { useState } from 'react'
import { ErrorAlert } from './errorAlert'

type EventRequestsCardProps = {
    requests: EventRequest[] | undefined
}

export function EventRequestsCard({ requests }: EventRequestsCardProps) {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { toast } = useToast()

    const handleRequestToEvent = async (
        eventId: string,
        doubleId: string,
        categoryId: string,
        accepted: boolean
    ) => {
        try {
            const requestBody = {
                eventId: eventId,
                categoryId: categoryId,
                doubleId: doubleId,
                accepted: accepted,
            }
            const data = await axiosInstance.post(
                'events/handle-request',
                requestBody
            )
            accepted
                ? toast({
                      title: 'Doubles accepted',
                  })
                : toast({
                      title: 'Request denied',
                  })
            return data.data
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                }
            } else {
                setError(true)
                setErrorMessage('Error responding to request')
            }
        }
    }

    return (
        <Card className="overflow-hidden">
            <CardHeader className="flex flex-row items-start bg-muted/50">
                <div className="grid gap-0.5">
                    <CardTitle className="flex items-center gap-2 text-lg group">
                        Requests
                        <Button
                            size="icon"
                            variant="outline"
                            className="w-6 h-6 transition-opacity opacity-0 group-hover:opacity-100"
                        >
                            <Copy className="w-3 h-3" />
                            <span className="sr-only">
                                Handle requests here
                            </span>
                        </Button>
                    </CardTitle>
                    <CardDescription>event requests</CardDescription>
                </div>
            </CardHeader>
            <CardContent className="p-6 text-sm">
                <div className="grid grid-flow-row-dense grid-cols-2">
                    {requests?.length !== 0 ? (
                        requests?.map((req) => (
                            <>
                                <div className="flex flex-col justify-center">
                                    <p>
                                        {`[${req.category?.level} ${req.category?.type}]
                                - ${req.double?.players[0].firstName} ${req.double?.players[0].lastName} / ${req.double?.players[1].firstName} ${req.double?.players[1].lastName}`}
                                    </p>
                                </div>
                                <div className="flex flex-col items-end">
                                    <Button
                                        variant="ghost"
                                        className="w-12 h-12 rounded-full"
                                        onClick={() =>
                                            handleRequestToEvent(
                                                req.eventId,
                                                req.doubleId,
                                                req.categoryId,
                                                true
                                            )
                                        }
                                    >
                                        <Check />
                                    </Button>
                                    <Button
                                        variant="ghost"
                                        className="w-12 h-12 rounded-full"
                                        onClick={() =>
                                            handleRequestToEvent(
                                                req.eventId,
                                                req.doubleId,
                                                req.categoryId,
                                                false
                                            )
                                        }
                                    >
                                        <X />
                                    </Button>
                                </div>
                            </>
                        ))
                    ) : (
                        <div>event has no requests yet</div>
                    )}
                </div>
            </CardContent>
            {isError && (
                <div onClick={() => setError(false)} className="mt-4">
                    <ErrorAlert message={errorMessage} />
                </div>
            )}
            <CardFooter className="flex flex-row items-center px-6 py-3 border-t bg-muted/50">
                <div className="text-xs text-muted-foreground">
                    I need to do pagination for the invites get all route.
                </div>
                <Pagination className="w-auto ml-auto mr-0">
                    <PaginationContent>
                        <PaginationItem>
                            <Button
                                size="icon"
                                variant="outline"
                                className="w-6 h-6"
                            >
                                <ChevronLeft className="h-3.5 w-3.5" />
                                <span className="sr-only">Previous Order</span>
                            </Button>
                        </PaginationItem>
                        <PaginationItem>
                            <Button
                                size="icon"
                                variant="outline"
                                className="w-6 h-6"
                            >
                                <ChevronRight className="h-3.5 w-3.5" />
                                <span className="sr-only">Next Order</span>
                            </Button>
                        </PaginationItem>
                    </PaginationContent>
                </Pagination>
            </CardFooter>
        </Card>
    )
}
