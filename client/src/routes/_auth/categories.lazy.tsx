import { axiosInstance } from '@/axiosInstance'
import { CategoriesTable } from '@/components/custom/categoriesTable/categoriesTable'
import {
    CategoriesTableData,
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
import { useState } from 'react'

export const Route = createLazyFileRoute('/_auth/categories')({
    component: Categories,
})

function Categories() {
    const [isError, setError] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string | undefined>()

    const { toast } = useToast()

    const { allCategories } = useGetCategories()
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

            toasted(data.data)
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosError = error as AxiosError<ErrorResponse>
                if (
                    axiosError.response &&
                    (axiosError.response.status === 400 || 409)
                ) {
                    setError(true)
                    setErrorMessage(axiosError.response.data.message)
                } else {
                    setError(true)
                    setErrorMessage('Error creating doubles')
                }
            } else {
                setError(true)
                setErrorMessage('Error creating doubles')
            }
        }
    }

    const categoriesTableData: CategoriesTableData[] | undefined =
        allCategories?.map((category) => {
            return {
                id: category.id,
                level: category.level,
                type: category.type,
                players: category.players?.length ?? 0,
                doubles: category.doubles?.length ?? 0,
            }
        })

    console.log(categoriesTableData)
    return (
        // <div className="flex items-center justify-center w-auto">
        <div className="grid grid-cols-1 sm:grid-cols-3 justify-items-center">
            <div className="flex flex-col items-center justify-center">
                <CategoryForm
                    onSubmit={createCategoryHandler}
                    defaultValues={{ level: '', type: CatType.ALL }}
                />
                {isError && (
                    <div onClick={() => setError(false)} className="mt-4">
                        <ErrorAlert message={errorMessage} />
                    </div>
                )}
            </div>
            {categoriesTableData && (
                <div className="flex flex-col items-center w-full col-span-2">
                    <h1 className="p-2 text-4xl">Categories</h1>
                    <CategoriesTable
                        columns={categoriesColumns}
                        data={categoriesTableData}
                    />
                </div>
            )}
        </div>
        // </div>
    )
}
