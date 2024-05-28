import mari from '../../styles/jpg/mari.jpg'
import { Button } from '@/components/ui/button'
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuLabel,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { useTheme } from '@/components/themeProvider'
import { Switch } from '../ui/switch'
import { Label } from '../ui/label'
import { AxiosResponse } from 'axios'
import { axiosInstance } from '@/axiosInstance'
import { useAuth } from '@/hooks/useAuth'
import { useNavigate } from '@tanstack/react-router'

export const UserDropDown = () => {
    const navigate = useNavigate()

    const authentication = useAuth()

    const logoutHandler = async () => {
        const data: AxiosResponse<boolean> =
            await axiosInstance.get('auth/logout/')
        localStorage.removeItem('accessToken')
        localStorage.removeItem('refreshToken')
        authentication.signOut()
        navigate({ to: '/login' })
        return data
    }
    const { theme, setTheme } = useTheme()

    return (
        <DropdownMenu>
            <DropdownMenuTrigger asChild>
                <Button
                    variant="outline"
                    size="icon"
                    className="w-12 h-12 overflow-hidden rounded-full"
                >
                    <img src={mari} alt="Avatar" className="overflow-hidden " />
                </Button>
            </DropdownMenuTrigger>
            <DropdownMenuContent align="end">
                <DropdownMenuLabel>My Account</DropdownMenuLabel>
                <DropdownMenuSeparator />
                <DropdownMenuItem>Settings</DropdownMenuItem>
                <DropdownMenuItem>Support</DropdownMenuItem>
                <DropdownMenuSeparator />
                <DropdownMenuItem onClick={logoutHandler}>
                    Logout
                </DropdownMenuItem>
                <DropdownMenuSeparator />
                <DropdownMenuItem>
                    <DropdownMenuLabel>Set theme</DropdownMenuLabel>
                    {theme === 'dark' && (
                        <div className="flex items-center space-x-2">
                            <Switch
                                checked={true}
                                onCheckedChange={() => setTheme('light')}
                                id="set-theme-light"
                            />
                            {/* <Label htmlFor="set-theme-light">Set theme</Label> */}
                        </div>
                    )}
                    {theme === 'light' && (
                        <div className="flex items-center space-x-2">
                            <Switch
                                checked={false}
                                onCheckedChange={() => setTheme('dark')}
                                id="set-theme-dark"
                            />
                            {/* <Label htmlFor="set-theme-dark">Set theme</Label> */}
                        </div>
                    )}
                    {theme === 'system' && (
                        <div className="flex flex-col justify-center space-x-2 align-middle">
                            <DropdownMenuSeparator />

                            <Label
                                className="text-2xl rounded-sm cursor-pointer hover:bg-white hover:bg-opacity-40"
                                onClick={() => setTheme('light')}
                            >
                                🌞
                            </Label>
                            <DropdownMenuSeparator />

                            <Label
                                className="text-2xl rounded-sm cursor-pointer hover:bg-white hover:bg-opacity-40"
                                onClick={() => setTheme('dark')}
                            >
                                🌚
                            </Label>
                        </div>
                    )}
                </DropdownMenuItem>
            </DropdownMenuContent>
        </DropdownMenu>
    )
}
