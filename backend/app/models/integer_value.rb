# frozen_string_literal: true

class IntegerValue < ApplicationRecord
  belongs_to :content, class_name: 'IntegerContent', foreign_key: :integer_content_id, inverse_of: :values
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :integer_values
end
