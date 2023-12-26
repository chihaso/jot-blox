# frozen_string_literal: true

class BinaryContent < ApplicationRecord
  belongs_to :topic
  has_many :binary_values, dependent: :destroy
end
