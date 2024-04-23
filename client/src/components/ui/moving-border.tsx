/* eslint-disable @typescript-eslint/no-explicit-any */
'use client'
import React from 'react'
import {
    motion,
    useAnimationFrame,
    useMotionTemplate,
    useMotionValue,
    useTransform,
} from 'framer-motion'
import { useRef } from 'react'
import { cn } from '../../lib/utils'

export function CoolButton({
    borderRadius = '1.75rem',
    children,
    as: Component = 'button',
    containerClassName,
    borderClassName,
    duration,
    className,
    ...otherProps
}: {
    borderRadius?: string
    children: React.ReactNode
    as?: any
    containerClassName?: string
    borderClassName?: string
    duration?: number
    className?: string
    [key: string]: any
}) {
    return (
        <Component
            className={cn(
                'bg-transparent relative text-xl  h-16 w-48  p-[1px] overflow-hidden',
                containerClassName
            )}
            style={{
                borderRadius: borderRadius,
            }}
            {...otherProps}
        >
            <div
                className="absolute inset-0"
                style={{ borderRadius: `calc(${borderRadius} * 0.96)` }}
            >
                <MovingBorder duration={duration} rx="30%" ry="30%">
                    <div
                        className={cn(
                            'h-10 w-60 opacity-[0.4] bg-[radial-gradient(var(--green-300)_40%,transparent_10%)]',
                            borderClassName
                        )}
                    />
                </MovingBorder>
            </div>

            <div
                className={cn(
                    'relative border border-gray-800 backdrop-blur-xl text-white flex items-center justify-center w-full h-full text-sm antialiased',
                    className
                )}
                style={{
                    borderRadius: `calc(${borderRadius} * 0.96)`,
                }}
            >
                {children}
            </div>
        </Component>
    )
}

export const MovingBorder = ({
    children,
    duration = 2000,
    rx,
    ry,
    ...otherProps
}: {
    children: React.ReactNode
    duration?: number
    rx?: string
    ry?: string
    [key: string]: any
}) => {
    const pathRef = useRef<any>()
    const progress = useMotionValue<number>(0)

    useAnimationFrame((time) => {
        const length = pathRef.current?.getTotalLength()
        if (length) {
            const pxPerMillisecond = length / duration
            progress.set((time * pxPerMillisecond) % length)
        }
    })

    const x = useTransform(
        progress,
        (val) => pathRef.current?.getPointAtLength(val).x
    )
    const y = useTransform(
        progress,
        (val) => pathRef.current?.getPointAtLength(val).y
    )

    const transform = useMotionTemplate`translateX(${x}px) translateY(${y}px) translateX(-50%) translateY(-50%)`

    return (
        <>
            <svg
                xmlns="http://www.w3.org/2000/svg"
                preserveAspectRatio="none"
                className="absolute w-full h-full"
                width="100%"
                height="100%"
                {...otherProps}
            >
                <rect
                    fill="none"
                    width="100%"
                    height="100%"
                    rx={rx}
                    ry={ry}
                    ref={pathRef}
                />
            </svg>
            <motion.div
                style={{
                    position: 'absolute',
                    top: 0,
                    left: 0,
                    display: 'inline-block',
                    transform,
                }}
            >
                {children}
            </motion.div>
        </>
    )
}
