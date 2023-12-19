import { RecordBlockType } from '@/app/dummyData'
import { Box, Heading } from '@chakra-ui/react'

type Props = {
  recordBlock: RecordBlockType
}

const TextContent = () => {
  return <div>Text Block</div>
}

const IntegerContent = () => {
  return <div>Integer Block</div>
}

const CONTENT_MAP = {
  text: TextContent,
  integer: IntegerContent,
}

const RecordBlock = ({ recordBlock }: Props) => {
  return (
    <Box>
      <Heading as="h3">{recordBlock.name}</Heading>
      {recordBlock.topics.map((topic, index) => (
        <Box key={`${recordBlock.name}-${index}`} ml="24px">
          <Heading as="h4">{topic.name}</Heading>
          {topic.contents.map((content, index) => (
            <Box key={`${recordBlock.name}-${topic.name}-${index}`} ml="24px">
              <Box>{content.type}</Box>
              <Box>{content.name}</Box>
              <Box>{content.value.toString()}</Box>
            </Box>
          ))}
        </Box>
      ))}
    </Box>
  )
}

export default RecordBlock
