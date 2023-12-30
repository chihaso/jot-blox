# frozen_string_literal: true

class Entry < ApplicationRecord
  belongs_to :record_block
  has_many :multi_level_values, dependent: :destroy
  has_many :binary_values, dependent: :destroy
  has_many :text_values, dependent: :destroy
  has_many :integer_values, dependent: :destroy
  has_many :float_values, dependent: :destroy
  has_many :date_time_values, dependent: :destroy
end
