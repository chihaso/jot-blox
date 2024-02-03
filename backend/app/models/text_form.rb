# frozen_string_literal: true

class TextForm < ApplicationRecord
  include Form

  has_many :values, class_name: 'TextValue', inverse_of: :form, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'text'
    }
  end
end
