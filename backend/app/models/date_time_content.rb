# frozen_string_literal: true

class DateTimeContent < ApplicationRecord
  belongs_to :topic
  has_many :values, class_name: 'DateTimeValue', inverse_of: :content, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'date_time'
    }
  end
end
