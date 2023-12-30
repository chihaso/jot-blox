'use client'

import { Button, Heading, VStack } from '@chakra-ui/react'
import { useState } from 'react'
import RecordBlockForm from './RecordBlockForm'
import { ContentType, RecordBlockType, TopicType } from '../dummyData'

export default function BlocksSetting() {
  const [recordBlocks, setRecordBlocks] = useState<RecordBlockType[]>([
    {
      name: '日記',
      topics: [
        {
          name: null,
          contents: [
            {
              name: null,
              type: 'text',
            },
          ],
        },
      ],
    },
    {
      name: 'ビビの記録',
      topics: [
        {
          name: 'おしっこ',
          contents: [
            {
              name: '回数',
              type: 'integer',
            },
          ],
        },
        {
          name: 'うんち',
          contents: [
            {
              name: '量',
              type: 'multiLevel',
              size: 10,
              left_label: '少ない',
              right_label: '多い',
            },
            {
              name: '毛量',
              type: 'multiLevel',
              size: 4,
              left_label: '少ない',
              right_label: '多い',
            },
          ],
        },
      ],
    },
  ])

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
