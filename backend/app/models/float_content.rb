# frozen_string_literal: true

class FloatContent < ApplicationRecord
  belongs_to :topic
  has_many :values, class_name: 'FloatValue', inverse_of: :content, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'float',
      unit:
    }
  end
end
