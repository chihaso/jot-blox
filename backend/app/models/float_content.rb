# frozen_string_literal: true

class FloatContent < ApplicationRecord
  belongs_to :topic
  has_many :float_values, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'float',
      unit:
    }
  end
end
