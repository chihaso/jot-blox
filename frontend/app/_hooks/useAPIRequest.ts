const BASE_URL = process.env.NEXT_PUBLIC_BACKEND_URL

export const useAPIRequest = () => {
  const get = async <ResponseType>(path: string, options?: RequestInit): Promise<ResponseType> => {
    const response = await fetch(`${BASE_URL}${path}`, {
      headers: {
        mode: 'cors',
        'Content-Type': 'application/json',
      },
      ...options,
    })
    const data = await response.json()

    if (!response.ok) {
      throw new Error(data.message)
    }

    return data
  }

  return { get }
}
