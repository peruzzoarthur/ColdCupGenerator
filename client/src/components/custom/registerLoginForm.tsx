import { Button } from '@/components/ui/button'
import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from '@/components/ui/card'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Link } from '@tanstack/react-router'

export function RegisterLoginForm() {
    return (
        <Card className="max-w-sm mx-auto">
            <CardHeader>
                <CardTitle className="text-xl">Sign Up</CardTitle>
                <CardDescription>
                    Enter your information to create an account
                </CardDescription>
            </CardHeader>
            <CardContent>
                <div className="grid gap-4">
                    <div className="grid grid-cols-2 gap-4">
                        <div className="grid gap-2">
                            <Label htmlFor="first-name">First name</Label>
                            <Input
                                id="first-name"
                                placeholder="João"
                                required
                            />
                        </div>
                        <div className="grid gap-2">
                            <Label htmlFor="last-name">Last name</Label>
                            <Input
                                id="last-name"
                                placeholder="Maria"
                                required
                            />
                        </div>
                    </div>
                    <div className="grid gap-2">
                        <Label htmlFor="email">Email</Label>
                        <Input
                            id="email"
                            type="email"
                            placeholder="miguel@example.com"
                            required
                        />
                    </div>
                    <div className="grid gap-2">
                        <Label htmlFor="password">Password</Label>
                        <Input id="password" type="password" />
                    </div>
                    <Button type="submit" className="w-full">
                        Create an account
                    </Button>
                </div>
                <div className="mt-4 text-sm text-center">
                    Already have an account?{' '}
                    <Link to="/login" href="#" className="underline">
                        Sign in
                    </Link>
                </div>
            </CardContent>
        </Card>
    )
}
