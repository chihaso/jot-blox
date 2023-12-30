'use client'

import { Button, Heading, VStack } from '@chakra-ui/react'
import { useEffect, useState } from 'react'
import RecordBlockForm from './RecordBlockForm'
import { ContentType, RecordBlockType, TopicType } from '../dummyData'
import { useAPIRequest } from '../_hooks/useAPIRequest'

export default function BlocksSetting() {
  const { get } = useAPIRequest()

  const [recordBlocks, setRecordBlocks] = useState<RecordBlockType[]>([])

  useEffect(() => {
    get<RecordBlockType[]>('/record_settings').then((res) => {
      setRecordBlocks(res)
    })
  }, [])

  const updateBlock = (blockIndex: number, newBlock: RecordBlockType): void => {
    setRecordBlocks((prevBlocks) => {
      const newBlocks = [...prevBlocks]
      newBlocks[blockIndex] = { ...newBlock } as RecordBlockType

      return newBlocks
    })
  }

  const updateTopic = (blockIndex: number, topicIndex: number, newTopic: TopicType): void => {
    setRecordBlocks((prevBlocks) => {
      const newBlocks = [...prevBlocks]
      const targetBlock = newBlocks[blockIndex]
      const targetTopic = targetBlock.topics[topicIndex]

      targetBlock.topics[topicIndex] = { ...targetTopic, ...newTopic } as TopicType

      return newBlocks
    })
  }

  const updateContent = (
    blockIndex: number,
    topicIndex: number,
    contentIndex: number,
    newContent: ContentType,
  ): void => {
    setRecordBlocks((prevBlocks) => {
      const newBlocks = [...prevBlocks]
      const targetBlock = newBlocks[blockIndex]
      const targetTopic = targetBlock.topics[topicIndex]
      const targetContent = targetTopic.contents[contentIndex]

      targetTopic.contents[contentIndex] = { ...targetContent, ...newContent } as ContentType

      return newBlocks
    })
  }

  return (
    <VStack spacing={4} align="start">
      <Heading as="h2">記録内容の編集</Heading>
      {recordBlocks.map((recordBlock, index) => (
        <RecordBlockForm
          key={`record-block-${index}`}
          recordBlock={recordBlock as RecordBlockType}
          recordBlockIndex={index}
          updateBlock={updateBlock}
          updateTopic={updateTopic}
          updateContent={updateContent}
        />
      ))}
      <Button>保存</Button>
    </VStack>
  )
}
