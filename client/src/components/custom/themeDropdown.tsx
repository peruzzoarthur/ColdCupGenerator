import { Moon, Sun } from 'lucide-react'

import { Button } from '@/components/ui/button'
// import {
//     DropdownMenu,
//     DropdownMenuContent,
//     DropdownMenuItem,
//     DropdownMenuTrigger,
// } from '@/components/ui/dropdown-menu'
import { useTheme } from '@/components/themeProvider'
export const ThemeDropDown = () => {
    const { theme, setTheme } = useTheme()

    return (
        <>
            {theme === 'dark' && (
                <div className="flex flex-row items-center space-x-1">
                    <Button variant="outline" onClick={() => setTheme('light')}>
                        <Sun className="mr-1" />
                        <span className="sr-only">Toggle theme</span>
                        <p className="flex text-sm text-center">Light theme</p>
                    </Button>
                </div>
            )}
            {theme === 'light' && (
                <div className="flex flex-row items-center space-x-1">
                    <Button variant="outline" onClick={() => setTheme('dark')}>
                        <Moon className="h-[1.2rem] w-[1.2rem] rotate-0 scale-100 transition-all dark:-rotate-90 dark:scale-0 mr-1" />
                        <span className="sr-only">Toggle theme</span>
                        <p className="flex text-sm text-center">Dark theme</p>
                    </Button>
                </div>
            )}
        </>
    )
}

// <DropdownMenu>
//     <DropdownMenuTrigger asChild>
//         <Button variant="outline" size="icon">
//             <Sun className="h-[1.2rem] w-[1.2rem] rotate-0 scale-100 transition-all dark:-rotate-90 dark:scale-0" />
//             <Moon className="absolute h-[1.2rem] w-[1.2rem] rotate-90 scale-0 transition-all dark:rotate-0 dark:scale-100" />
//             <span className="sr-only">Toggle theme</span>
//         </Button>
//     </DropdownMenuTrigger>
//     <DropdownMenuContent align="end">

//         <DropdownMenuItem onClick={() => setTheme('light')}>
//             Light
//         </DropdownMenuItem>
//         <DropdownMenuItem onClick={() => setTheme('dark')}>
//             Dark
//         </DropdownMenuItem>
//         <DropdownMenuItem onClick={() => setTheme('system')}>
//             System
//         </DropdownMenuItem>
//     </DropdownMenuContent>
// </DropdownMenu>
