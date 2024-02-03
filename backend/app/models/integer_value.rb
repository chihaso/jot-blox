# frozen_string_literal: true

class IntegerValue < ApplicationRecord
  belongs_to :form, class_name: 'IntegerForm', foreign_key: :integer_form_id, inverse_of: :values
end
