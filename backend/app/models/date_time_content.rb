# frozen_string_literal: true

class DateTimeContent < ApplicationRecord
  belongs_to :topic
  has_many :date_time_values, dependent: :destroy
end
