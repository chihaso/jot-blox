# frozen_string_literal: true

class TextContent < ApplicationRecord
  belongs_to :topic
  has_many :values, class_name: 'TextValue', inverse_of: :content, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'text'
    }
  end
end
