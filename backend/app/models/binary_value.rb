# frozen_string_literal: true

class BinaryValue < ApplicationRecord
  belongs_to :form, class_name: 'BinaryForm', foreign_key: :binary_form_id, inverse_of: :values
end
