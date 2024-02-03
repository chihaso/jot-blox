# frozen_string_literal: true

class DateTimeValue < ApplicationRecord
  belongs_to :form, class_name: 'DateTimeForm', foreign_key: :date_time_form_id, inverse_of: :values
end
