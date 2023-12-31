# frozen_string_literal: true

class BinaryValue < ApplicationRecord
  belongs_to :binary_content
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :binary_values
end
