# frozen_string_literal: true

class BinaryValue < ApplicationRecord
  belongs_to :content, class_name: 'BinaryContent', foreign_key: :binary_content_id, inverse_of: :values
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :binary_values
end
