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
import { ThemeDropDown } from './themeDropdown'
export const UserDropDown = () => {
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

                <DropdownMenuItem>Logout</DropdownMenuItem>
                <DropdownMenuSeparator />
                <div className="flex justify-end">
                    <ThemeDropDown />
                </div>
            </DropdownMenuContent>
        </DropdownMenu>
    )
}
