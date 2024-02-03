# frozen_string_literal: true

class IntegerForm < ApplicationRecord
  include Form

  has_many :values, class_name: 'IntegerValue', inverse_of: :form, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'integer',
      unit:
    }
  end
end
