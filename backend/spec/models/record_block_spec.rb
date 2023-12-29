# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RecordBlock do
  describe '#settings' do
    let!(:record_block) { create(:record_block, name: '記録ブロック') }
    let!(:topic) { create(:topic, record_block:, name: 'トピック') }
    let!(:multi_level_content) do
      create(:multi_level_content, topic:, name: '多階層コンテンツ', left_label: '少ない', right_label: '多い', size: 5)
    end
    let!(:binary_content) do
      create(:binary_content, topic:, name: '２段階コンテンツ', false_label: 'なし', true_label: 'あり')
    end
    let!(:integer_content) { create(:integer_content, topic:, name: '整数コンテンツ', unit: '個') }
    let!(:float_content) { create(:float_content, topic:, name: '小数コンテンツ', unit: 'cm') }
    let!(:text_content) { create(:text_content, topic:, name: 'テキストコンテンツ') }
    let!(:date_time_content) { create(:date_time_content, topic:, name: '日時コンテンツ') }

    it 'RecordBlock, Topic, Contentsの設定状況を返す' do
      expect(record_block.settings).to eq(
        id: record_block.id,
        name: record_block.name,
        topics: [{
          id: topic.id,
          name: topic.name,
          contents: [
            {
              id: multi_level_content.id,
              name: multi_level_content.name,
              type: 'multi_level',
              left_label: multi_level_content.left_label,
              right_label: multi_level_content.right_label,
              size: multi_level_content.size
            },
            {
              id: binary_content.id,
              name: binary_content.name,
              type: 'binary',
              false_label: binary_content.false_label,
              true_label: binary_content.true_label
            },
            {
              id: integer_content.id,
              name: integer_content.name,
              type: 'integer',
              unit: integer_content.unit
            },
            {
              id: float_content.id,
              name: float_content.name,
              type: 'float',
              unit: float_content.unit
            },
            {
              id: text_content.id,
              name: text_content.name,
              type: 'text'
            },
            {
              id: date_time_content.id,
              name: date_time_content.name,
              type: 'date_time'
            }
          ]
        }]
      )
    end
  end
end
