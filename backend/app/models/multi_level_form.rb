# frozen_string_literal: true

class MultiLevelForm < ApplicationRecord
  include Form

  has_many :values, class_name: 'MultiLevelValue', inverse_of: :form, dependent: :destroy

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
