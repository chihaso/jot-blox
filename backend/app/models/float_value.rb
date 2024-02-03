# frozen_string_literal: true

class FloatValue < ApplicationRecord
  belongs_to :form, class_name: 'FloatForm', foreign_key: :float_form_id, inverse_of: :values
end
