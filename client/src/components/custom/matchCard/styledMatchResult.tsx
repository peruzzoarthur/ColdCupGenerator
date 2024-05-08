/* eslint-disable @typescript-eslint/no-explicit-any */
import { MovingBorder } from '@/components/ui/moving-border'
import { MatchGamesResponse } from '@/hooks/useGetMatchGames'
import { cn } from '@/lib/utils'
import { Match } from '@/types/padel.types'
import React from 'react'

type ResultProps = {
    match: Match
    matchGames: MatchGamesResponse | null | undefined
    borderRadius?: string
    borderColor?: string
    children?: React.ReactNode
    as?: any
    containerClassName?: string
    borderClassName?: string
    duration?: number
    className?: string
    [key: string]: any
}

export const MatchResult = ({
    match,
    matchGames,
    borderRadius = '0rem',
    as: Component = 'div',
    containerClassName,
    borderClassName,
    duration,
    className,
    ...otherProps
}: ResultProps) => {
    return (
        <>
            {/* Match unfinished */}
            {match.isFinished ? null : (
                <>
                    <div className="flex items-center p-4 mt-1 space-x-4 border">
                        <div className="flex-1 space-y-1">
                            <div className="flex flex-row justify-between">
                                <div className="text-sm text-muted-foreground ">
                                    {match.doubles[0].players?.map(
                                        (p, index) => (
                                            <p
                                                key={index}
                                            >{`${p.firstName} ${p.lastName}`}</p>
                                        )
                                    )}
                                </div>
                                <div className="justify-end text-sm text-muted-foreground">
                                    {match.isFinished && matchGames ? (
                                        <p className="items-end align-end">
                                            {matchGames.doublesTwoGames}
                                        </p>
                                    ) : (
                                        <p className="items-end justify-end">
                                            0
                                        </p>
                                    )}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="flex items-center p-4 mt-1 space-x-4 border">
                        <div className="flex-1 space-y-1">
                            <div className="flex flex-row justify-between">
                                <div className="text-sm text-muted-foreground ">
                                    {match.doubles[1].players?.map(
                                        (p, index) => (
                                            <p
                                                key={index}
                                            >{`${p.firstName} ${p.lastName}`}</p>
                                        )
                                    )}
                                </div>
                                <div className="justify-end text-sm text-muted-foreground">
                                    {match.isFinished && matchGames ? (
                                        <p className="items-end align-end">
                                            {matchGames.doublesTwoGames}
                                        </p>
                                    ) : (
                                        <p className="items-end justify-end">
                                            0
                                        </p>
                                    )}
                                </div>
                            </div>
                        </div>
                    </div>
                </>
            )}

            {/* Match finished */}

            {/* Doubles One isWinner */}
            {match.isFinished && match.winner.id === match.doubles[0].id && (
                <>
                    <Component
                        className={cn(
                            'bg-transparent relative text-xl  h-full w-full p-[1px] overflow-hidden',
                            containerClassName
                        )}
                        style={{
                            borderRadius: borderRadius,
                        }}
                        {...otherProps}
                    >
                        <div
                            className="absolute inset-0"
                            style={{
                                borderRadius: `calc(${borderRadius} * 0.96)`,
                            }}
                        >
                            <MovingBorder duration={duration} rx="30%" ry="30%">
                                <div
                                    className={cn(
                                        `h-10 w-60 opacity-[0.3] bg-[radial-gradient(var(--green-500)_40%,transparent_10%)]`,
                                        borderClassName
                                    )}
                                />
                            </MovingBorder>
                        </div>

                        {/*Doubles 0 */}
                        <div
                            className={cn(
                                'relative border-gray-800 backdrop-blur-xl flex flex-col  justify-center w-full h-full text-sm antialiased',
                                className
                            )}
                            style={{
                                borderRadius: `calc(${borderRadius} * 0.96)`,
                            }}
                        >
                            <div className="flex items-center p-4 space-x-4 border rounded-md ">
                                <div className="flex-1 space-y-1">
                                    <div className="flex flex-row justify-between">
                                        <div className="text-sm text-muted-foreground">
                                            {match.doubles[0].players?.map(
                                                (p, index) => (
                                                    <p
                                                        key={index}
                                                    >{`${p.firstName} ${p.lastName}`}</p>
                                                )
                                            )}
                                        </div>
                                        <div className="justify-end text-sm text-muted-foreground">
                                            {match.isFinished && matchGames ? (
                                                <p className="items-end align-end">
                                                    {matchGames.doublesOneGames}
                                                </p>
                                            ) : (
                                                <p className="items-end justify-end">
                                                    0
                                                </p>
                                            )}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </Component>

                    <Component
                        className={cn(
                            'bg-transparent relative text-xl  h-full w-full p-[1px] overflow-hidden',
                            containerClassName
                        )}
                        style={{
                            borderRadius: borderRadius,
                        }}
                        {...otherProps}
                    >
                        <div
                            className="absolute inset-0"
                            style={{
                                borderRadius: `calc(${borderRadius} * 0.96)`,
                            }}
                        >
                            <MovingBorder duration={duration} rx="30%" ry="30%">
                                <div
                                    className={cn(
                                        `h-10 w-60 opacity-[0.3] bg-[radial-gradient(var(--red-500)_40%,transparent_10%)]`,
                                        borderClassName
                                    )}
                                />
                            </MovingBorder>
                        </div>
                        <div
                            className={cn(
                                'relative border-gray-800 backdrop-blur-xl flex flex-col  justify-center w-full h-full text-sm antialiased',
                                className
                            )}
                            style={{
                                borderRadius: `calc(${borderRadius} * 0.96)`,
                            }}
                        >
                            <div className="flex items-center p-4 space-x-4 border rounded-md">
                                <div className="flex-1 space-y-1">
                                    <div className="flex flex-row justify-between">
                                        <div className="text-sm text-muted-foreground ">
                                            {match.doubles[1].players?.map(
                                                (p, index) => (
                                                    <p
                                                        key={index}
                                                    >{`${p.firstName} ${p.lastName}`}</p>
                                                )
                                            )}
                                        </div>
                                        <div className="justify-end text-sm text-muted-foreground">
                                            {match.isFinished && matchGames ? (
                                                <p className="items-end align-end">
                                                    {matchGames.doublesTwoGames}
                                                </p>
                                            ) : (
                                                <p className="items-end justify-end">
                                                    0
                                                </p>
                                            )}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </Component>
                </>
            )}

            {/* Doubles Two isWinner */}
            {match.isFinished && match.winner.id === match.doubles[1].id && (
                <>
                    {/* doubles One*/}
                    <Component
                        className={cn(
                            'bg-transparent relative text-xl h-full w-full p-[1px] overflow-hidden',
                            containerClassName
                        )}
                        style={{
                            borderRadius: borderRadius,
                        }}
                        {...otherProps}
                    >
                        <div
                            className="absolute inset-0"
                            style={{
                                borderRadius: `calc(${borderRadius} * 0.96)`,
                            }}
                        >
                            <MovingBorder duration={duration} rx="30%" ry="30%">
                                <div
                                    className={cn(
                                        `h-10 w-60 opacity-[0.3] bg-[radial-gradient(var(--red-500)_40%,transparent_10%)]`,
                                        borderClassName
                                    )}
                                />
                            </MovingBorder>
                        </div>
                        <div
                            className={cn(
                                'relative border-gray-800 backdrop-blur-xl flex flex-col  justify-center w-full h-full text-sm antialiased',
                                className
                            )}
                            style={{
                                borderRadius: `calc(${borderRadius} * 0.96)`,
                            }}
                        >
                            <div className="flex items-center p-4 space-x-4 border rounded-md ">
                                <div className="flex-1 space-y-1">
                                    <div className="flex flex-row justify-between">
                                        <div className="text-sm text-muted-foreground ">
                                            {match.doubles[0].players?.map(
                                                (p, index) => (
                                                    <p
                                                        key={index}
                                                    >{`${p.firstName} ${p.lastName}`}</p>
                                                )
                                            )}
                                        </div>
                                        <div className="justify-end text-sm text-muted-foreground">
                                            {match.isFinished && matchGames ? (
                                                <p className="items-end align-end">
                                                    {matchGames.doublesOneGames}
                                                </p>
                                            ) : (
                                                <p className="items-end justify-end">
                                                    0
                                                </p>
                                            )}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </Component>

                    {/* doublesTwo */}
                    <Component
                        className={cn(
                            'bg-transparent relative text-xl h-full w-full p-[1px] overflow-hidden',
                            containerClassName
                        )}
                        style={{
                            borderRadius: borderRadius,
                        }}
                        {...otherProps}
                    >
                        <div
                            className="absolute inset-0"
                            style={{
                                borderRadius: `calc(${borderRadius} * 0.96)`,
                            }}
                        >
                            <MovingBorder duration={duration} rx="30%" ry="30%">
                                <div
                                    className={cn(
                                        `h-10 w-60 opacity-[0.3] bg-[radial-gradient(var(--green-500)_40%,transparent_10%)]`,
                                        borderClassName
                                    )}
                                />
                            </MovingBorder>
                        </div>

                        <div
                            className={cn(
                                'relative border-gray-800 backdrop-blur-xl flex flex-col  justify-center w-full h-full text-sm antialiased',
                                className
                            )}
                            style={{
                                borderRadius: `calc(${borderRadius} * 0.96)`,
                            }}
                        >
                            <div className="flex items-center p-4 space-x-4 border rounded-md ">
                                <div className="flex-1 space-y-1">
                                    <div className="flex flex-row justify-between">
                                        <div className="text-sm text-muted-foreground">
                                            {match.doubles[1].players?.map(
                                                (p, index) => (
                                                    <p
                                                        key={index}
                                                    >{`${p.firstName} ${p.lastName}`}</p>
                                                )
                                            )}
                                        </div>
                                        <div className="justify-end text-sm text-muted-foreground">
                                            {match.isFinished && matchGames ? (
                                                <p className="items-end align-end">
                                                    {matchGames.doublesTwoGames}
                                                </p>
                                            ) : (
                                                <p className="items-end justify-end">
                                                    0
                                                </p>
                                            )}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </Component>
                </>
            )}
        </>
    )
}
