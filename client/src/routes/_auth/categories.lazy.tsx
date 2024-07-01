import { axiosInstance } from '@/axiosInstance'
import { CategoriesTable } from '@/components/custom/categoriesTable/categoriesTable'
import {
    CategoriesTableProps,
    categoriesColumns,
} from '@/components/custom/categoriesTable/categoriesTableColumns'
import {
    CategoryForm,
    categoryFormObject,
} from '@/components/custom/categoryForm'
import { ErrorAlert } from '@/components/custom/errorAlert'
import { useToast } from '@/components/ui/use-toast'
import { useGetCategories } from '@/hooks/useGetCategories'
import { CatType, Category, ErrorResponse } from '@/types/padel.types'
import { createLazyFileRoute } from '@tanstack/react-router'
import axios, { AxiosError, AxiosResponse } from 'axios'
import { ListOrdered } from 'lucide-react'
import { useState } from 'react'

export const Route = createLazyFileRoute('/_auth/categories')({
    component: Categories,
})

function Categories() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()
    const { toast } = useToast()
    const { allCategories, refetchAllCategories } = useGetCategories()
    const toasted = (category: Category) => {
        toast({
            title: 'Success! 🙌',
            description: `Created category ${category.level} ${category.type}.`,
        })
    }

    const createCategoryHandler = async (input: categoryFormObject) => {
        try {
            const requestBody: { level: number; type: CatType } = {
                level: Number(input.level),
                type: input.type,
            }

            const data: AxiosResponse<Category> = await axiosInstance.post(
                '/categories/',
                requestBody
            )

            await refetchAllCategories()
            toasted(data.data)
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (axiosError.response && axiosError.response.status === 409) {
                    setError(true)
                    setErrorMessage('This category already exists')
                } else {
                    setError(true)
                    setErrorMessage('Error creating category')
                }
            } else {
                setError(true)
                setErrorMessage('Error creating category')
            }
        }
    }

    const categoriesTableData: CategoriesTableProps[] | undefined =
        allCategories?.map((category) => {
            return {
                id: category.id,
                level: category.level,
                type: category.type,
                players: category.players?.length ?? 0,
                doubles: category.doubles?.length ?? 0,
            }
        })

    return (
        <div className="flex flex-col justify-center w-4/5 space-y-2 xl:w-3/5">
            <h1 className="flex flex-row items-center p-2 text-2xl font-bold">
                Categories <ListOrdered className="w-5 h-5 ml-1" />
            </h1>
            <div className="grid grid-cols-1 space-y-2 md:grid-cols-3 md:space-y-0 justify-items-center">
                <div className="flex flex-col items-center justify-center">
                    <CategoryForm
                        onSubmit={createCategoryHandler}
                        defaultValues={{ level: '', type: CatType.ALL }}
                    />
                    {isError && (
                        <div
                            onClick={() => setError(false)}
                            className="flex w-full mt-4"
                        >
                            <ErrorAlert message={errorMessage} />
                        </div>
                    )}
                </div>
                {categoriesTableData && (
                    <div className="flex flex-col items-center w-full col-span-2 p-2">
                        <CategoriesTable
                            columns={categoriesColumns}
                            data={categoriesTableData}
                        />
                    </div>
                )}
            </div>
        </div>
    )
}
