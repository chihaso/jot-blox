# frozen_string_literal: true

class Entry < ApplicationRecord
  belongs_to :record_block
  has_many :multi_level_values, dependent: :destroy, inverse_of: :entry
  has_many :binary_values, dependent: :destroy, inverse_of: :entry
  has_many :text_values, dependent: :destroy, inverse_of: :entry
  has_many :integer_values, dependent: :destroy, inverse_of: :entry
  has_many :float_values, dependent: :destroy, inverse_of: :entry
  has_many :date_time_values, dependent: :destroy, inverse_of: :entry

  def values
    multi_level_values + binary_values + text_values + integer_values + float_values + date_time_values
  end
end
