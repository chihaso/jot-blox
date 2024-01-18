# frozen_string_literal: true

class MultiLevelContent < ApplicationRecord
  belongs_to :topic
  has_many :values, class_name: 'MultiLevelValue', inverse_of: :content, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'multi_level',
      left_label:,
      right_label:,
      size:
    }
  end
end
