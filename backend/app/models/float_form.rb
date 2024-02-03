# frozen_string_literal: true

class FloatForm < ApplicationRecord
  include Form

  has_many :values, class_name: 'FloatValue', inverse_of: :form, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'float',
      unit:
    }
  end
end
