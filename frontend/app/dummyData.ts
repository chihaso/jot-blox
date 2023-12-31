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
            size: 10,
            left_label: '少ない',
            right_label: '多い',
            value: 5,
          },
          {
            name: '毛量',
            type: 'multiLevel',
            size: 4,
            left_label: '少ない',
            right_label: '多い',
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

export type TopicType = {
  name: string | null
  contents: ContentType[]
}

export type ContentType =
  | TextContentType
  | IntegerContentType
  | FloatContentType
  | MultiLevelContentType
  | BinaryContentType
  | TimeContentType

type TextContentType = {
  type: 'text'
  name: string | null
  value?: string
}

type IntegerContentType = {
  type: 'integer'
  name: string | null
  value?: number
}

type FloatContentType = {
  type: 'float'
  name: string | null
  value?: number
}

type MultiLevelContentType = {
  type: 'multiLevel'
  name: string | null
  size: number
  left_label: string
  right_label: string
  value?: number
}

type BinaryContentType = {
  type: 'binary'
  name: string | null
  true_label: string
  false_label: string
  value?: boolean
}

type TimeContentType = {
  type: 'time'
  name: string | null
  value?: Date
}
