# frozen_string_literal: true

class DateTimeValue < ApplicationRecord
  belongs_to :content, class_name: 'DateTimeContent', foreign_key: :date_time_content_id, inverse_of: :values
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :date_time_values
end
