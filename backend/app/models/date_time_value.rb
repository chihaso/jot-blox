# frozen_string_literal: true

class DateTimeValue < ApplicationRecord
  belongs_to :date_time_content
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :date_time_values
end
