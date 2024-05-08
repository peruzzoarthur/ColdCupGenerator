/* eslint-disable @typescript-eslint/no-explicit-any */
import React from 'react'

import { cn } from '../../lib/utils'
import { MovingBorder } from '../ui/moving-border'

export function CoolButton({
    borderRadius = '1.75rem',
    // borderColor = '--green-500',
    children,
    as: Component = 'button',
    containerClassName,
    borderClassName,
    duration,
    className,
    ...otherProps
}: {
    borderRadius?: string
    borderColor?: string
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
                            `h-10 w-60 opacity-[0.3] bg-[radial-gradient(var(--green-500)_40%,transparent_10%)]`,
                            borderClassName
                        )}
                    />
                </MovingBorder>
            </div>

            <div
                className={cn(
                    'relative border border-gray-800 backdrop-blur-xl flex items-center justify-center w-full h-full text-sm antialiased',
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
