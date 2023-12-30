# frozen_string_literal: true

class FloatValue < ApplicationRecord
  belongs_to :float_content
  belongs_to :entry
end
