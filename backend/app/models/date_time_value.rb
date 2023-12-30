# frozen_string_literal: true

class DateTimeValue < ApplicationRecord
  belongs_to :date_time_content
  belongs_to :entry
end
