# frozen_string_literal: true

class TextValue < ApplicationRecord
  belongs_to :form, class_name: 'TextForm', foreign_key: :text_form_id, inverse_of: :values
end
