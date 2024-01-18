# frozen_string_literal: true

class IntegerContent < ApplicationRecord
  belongs_to :topic
  has_many :values, class_name: 'IntegerValue', inverse_of: :content, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'integer',
      unit:
    }
  end
end
