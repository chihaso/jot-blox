# frozen_string_literal: true

class Topic < ApplicationRecord
  belongs_to :record_block
  has_many :multi_level_contents, dependent: :destroy
  has_many :binary_contents, dependent: :destroy
  has_many :integer_contents, dependent: :destroy
  has_many :float_contents, dependent: :destroy
  has_many :text_contents, dependent: :destroy
  has_many :date_time_contents, dependent: :destroy

  def settings
    {
      id:,
      name:,
      contents: contents.map(&:settings)
    }
  end

  def contents
    multi_level_contents + binary_contents + integer_contents + float_contents + text_contents + date_time_contents
  end
end
