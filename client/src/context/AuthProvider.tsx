import useAuth from '@/hooks/useAuth'
import { ReactNode, createContext, useState } from 'react'

const AuthContext = createContext<{ auth; setAuth }>()

export const AuthProvider = ({ children }: { children: ReactNode }) => {
    const [auth, setAuth] = useState({})

    return (
        <AuthContext.Provider value={{ auth, setAuth }}>
            {children}
        </AuthContext.Provider>
    )
}

export type AuthContext = ReturnType<typeof useAuth>

export default AuthContext
