# frozen_string_literal: true

class IntegerContent < ApplicationRecord
  belongs_to :topic
  has_many :integer_values, dependent: :destroy
end
