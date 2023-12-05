export const dummyData: RecordBlockType[] = [
  {
    name: '日記',
    topics: [
      {
        name: null,
        contents: [
          {
            name: null,
            type: 'text',
            value: `朝早く目覚めた。
            顔を洗って無理やり目を覚ますがしばらく眠かった。
            頑張って資格勉強する、朝から偉すぎる。
            そのうち猫が起きてきて、リビングにこいと鳴くのでしばらくリビングでご飯やおやつあげたり、ブラッシングしたり。

            お昼は遅めに食べた。今日はチャーハン。妻が美味しいと言ってくれて嬉しい。
            片付けは妻がやってくれた。

            天気がよかったので軽く散歩をするつもりで外に出たが、気づくと２時間ほど歩き続けていた。
            夕飯の買い物をして家に帰ったらへとへと。やりすぎた。

            そのままのろのろと夕飯を作った。夕飯も遅め。
            食後はゆっくり読書をして過ごした。最近気づいたことだが、漫画やアニメを長時間見るより読書をした方が自分にとって心身の回復に良さそう。

            久しぶりに湯船にお湯を張ってゆっくり風呂を楽しんだ。
            寝るまでまた読書の続きだ。

            明日は雨で寒いらしいので何か温まるようなものを作りたい。
            `,
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
            value: 2,
          },
        ],
      },
      {
        name: 'うんち',
        contents: [
          {
            name: '量',
            type: 'multiLevel',
            minNum: 0,
            maxNum: 10,
            leftLabel: '少ない',
            rightLabel: '多い',
            value: 5,
          },
          {
            name: '毛量',
            type: 'multiLevel',
            minNum: 0,
            maxNum: 4,
            leftLabel: '少ない',
            rightLabel: '多い',
            value: 3,
          },
        ],
      },
    ],
  },
]

export type RecordBlockType = {
  name: string
  topics: TopicType[]
}

type TopicType = {
  name: string | null
  contents: ContentType[]
}

type ContentType =
  | TextContentType
  | IntegerContentType
  | FloatContentType
  | MultiLevelContentType
  | BinaryContentType
  | TimeContentType

type TextContentType = {
  type: 'text'
  name: string | null
  value: string
}

type IntegerContentType = {
  type: 'integer'
  name: string | null
  value: number
}

type FloatContentType = {
  type: 'float'
  name: string | null
  value: number
}

type MultiLevelContentType = {
  type: 'multiLevel'
  name: string | null
  minNum: number
  maxNum: number
  leftLabel: string
  rightLabel: string
  value: number
}

type BinaryContentType = {
  type: 'binary'
  name: string | null
  truthLabel: string
  falseLabel: string
  value: boolean
}

type TimeContentType = {
  type: 'time'
  name: string | null
  value: Date
}
