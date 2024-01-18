# frozen_string_literal: true

class Entry < ApplicationRecord
  belongs_to :record_block
  has_many :multi_level_values, dependent: :destroy, inverse_of: :entry
  has_many :binary_values, dependent: :destroy, inverse_of: :entry
  has_many :text_values, dependent: :destroy, inverse_of: :entry
  has_many :integer_values, dependent: :destroy, inverse_of: :entry
  has_many :float_values, dependent: :destroy, inverse_of: :entry
  has_many :date_time_values, dependent: :destroy, inverse_of: :entry

  # TODO: Add Tests
  def daily_record
    {
      name: record_block.name,
      topics: record_block.settings[:topics].each do |topic|
        topic[:contents].each do |content|
          content.merge!({ value: find_value!(content).value })
        end
      end
    }
  end

  private

  # TODO: This is a bit of a hack. We should probably have a polymorphic
  def find_value!(content_hash)
    send("#{content_hash[:type]}_values").find_by!("#{content_hash[:type]}_content_id": content_hash[:id])
  end
end
