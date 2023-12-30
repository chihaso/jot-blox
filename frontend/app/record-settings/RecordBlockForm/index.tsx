import { ContentType, RecordBlockType, TopicType } from '@/app/dummyData'
import { Box, Input, Select, Text } from '@chakra-ui/react'

type Props = {
  recordBlock: RecordBlockType
  recordBlockIndex: number
  updateBlock: (blockIndex: number, newBlock: RecordBlockType) => void
  updateTopic: (blockIndex: number, topicIndex: number, newTopic: TopicType) => void
  updateContent: (
    blockIndex: number,
    topicIndex: number,
    contentIndex: number,
    newContent: ContentType,
  ) => void
}

const RecordBlockForm = ({
  recordBlock,
  recordBlockIndex,
  updateBlock,
  updateTopic,
  updateContent,
}: Props) => {
  return (
    <Box>
      <Text fontSize="lg">記録ブロックの名前:</Text>
      <Input
        size="lg"
        value={recordBlock.name}
        onChange={(event) => {
          updateBlock(recordBlockIndex, { ...recordBlock, name: event.target.value })
        }}
      />
      {recordBlock.topics.map((topic, topicIndex) => (
        <Box key={`${recordBlock.name}-${topicIndex}`} ml="24px">
          <Text fontSize="lg">トピックの名前:</Text>
          <Input
            size="md"
            value={topic.name || ''}
            onChange={(event) => {
              updateTopic(recordBlockIndex, topicIndex, { ...topic, name: event.target.value })
            }}
          />
          {topic.contents.map((content, contentIndex) => (
            <Box key={`${recordBlock.name}-${topic.name}-${contentIndex}`} ml="24px">
              <Text fontSize="lg">コンテンツの名前:</Text>
              <Input
                size="md"
                value={content.name || ''}
                onChange={(event) => {
                  updateContent(recordBlockIndex, topicIndex, contentIndex, {
                    ...content,
                    name: event.target.value,
                  })
                }}
              />
              <Text fontSize="lg">コンテンツのタイプ:</Text>
              <Select
                placeholder="タイプを選択してください"
                value={content.type}
                onChange={(event) => {
                  updateContent(recordBlockIndex, topicIndex, contentIndex, {
                    ...content,
                    type: event.target.value,
                  } as ContentType)
                }}
              >
                <option value="text">テキスト</option>
                <option value="integer">整数</option>
                <option value="float">小数</option>
                <option value="multiLevel">複数段階</option>
                <option value="binary">２段階</option>
                <option value="time">時刻</option>
              </Select>
            </Box>
          ))}
        </Box>
      ))}
    </Box>
  )
}

export default RecordBlockForm
