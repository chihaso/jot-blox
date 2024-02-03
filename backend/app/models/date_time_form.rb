# frozen_string_literal: true

class DateTimeForm < ApplicationRecord
  include Form

  has_many :values, class_name: 'DateTimeValue', inverse_of: :form, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'date_time'
    }
  end
end
