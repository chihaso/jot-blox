# frozen_string_literal: true

class Topic < ApplicationRecord
  belongs_to :record_block
  has_many :multi_level_contents, dependent: :destroy
  has_many :binary_contents, dependent: :destroy
  has_many :integer_contents, dependent: :destroy
  has_many :float_contents, dependent: :destroy
  has_many :text_contents, dependent: :destroy
  has_many :date_time_contents, dependent: :destroy
end
