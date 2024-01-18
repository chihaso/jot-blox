# frozen_string_literal: true

class FloatValue < ApplicationRecord
  belongs_to :content, class_name: 'FloatContent', foreign_key: :float_content_id, inverse_of: :values
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :float_values
end
