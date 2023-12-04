'use client'

import Diary from './_components/Diary'

export default function Home() {
  return <Diary date={new Date()} />
}
