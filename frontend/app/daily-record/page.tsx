'use client'

import { useEffect, useState } from 'react'
import { VStack, Heading } from '@chakra-ui/react'
import { useSearchParams } from 'next/navigation'
import { RecordBlockType, dummyData } from '../dummyData'
import RecordBlock from './RecordBlock'
import { useAPIRequest } from '../_hooks/useAPIRequest'

const DailyRecord = () => {
  const [recordBlocks, setRecordBlocks] = useState<RecordBlockType[]>([])
  const searchParams = useSearchParams()
  const date = searchParams.get('date') ? new Date(searchParams.get('date')!) : new Date()
  const displayDateStr = date.toLocaleDateString('ja-JP', {
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
    weekday: 'short',
  })
  const searchDateStr = displayDateStr.slice(0, -3).replace(/\//g, '-')
  const { get } = useAPIRequest()

  useEffect(() => {
    get<RecordBlockType[]>(`/daily_record/${searchDateStr}`).then((res) => {
      setRecordBlocks(res)
    })
  }, [])

  return (
    <VStack spacing={4} align="start">
      <Heading as="h2">{displayDateStr}</Heading>
      {recordBlocks?.map((recordBlock, index) => (
        <RecordBlock key={`record-block-${index}`} recordBlock={recordBlock} />
      ))}
    </VStack>
  )
}

export default DailyRecord
