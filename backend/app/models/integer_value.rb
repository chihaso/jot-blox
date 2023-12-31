# frozen_string_literal: true

class IntegerValue < ApplicationRecord
  belongs_to :integer_content
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :integer_values
end
