# frozen_string_literal: true

class BinaryValue < ApplicationRecord
  belongs_to :binary_content
  belongs_to :entry
end
