# frozen_string_literal: true

class FloatValue < ApplicationRecord
  belongs_to :float_content
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :float_values
end
