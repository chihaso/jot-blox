# frozen_string_literal: true

class IntegerValue < ApplicationRecord
  belongs_to :integer_content
  belongs_to :entry
end
