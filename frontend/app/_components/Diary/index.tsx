import { VStack, Heading } from '@chakra-ui/react'
import { dummyData } from '../../dummyData'
import RecordBlock from './RecordBlock'

type Props = {
  date: Date
}

const Diary = ({ date }: Props) => {
  const recordBlocks = dummyData
  const dateStr = date.toLocaleDateString('ja-JP', {
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
    weekday: 'short',
  })

  return (
    <VStack spacing={4}>
      <Heading as="h2">{dateStr}</Heading>
      {recordBlocks.map((recordBlock, index) => (
        <RecordBlock key={`record-block-${index}`} recordBlock={recordBlock} />
      ))}
    </VStack>
  )
}

export default Diary
