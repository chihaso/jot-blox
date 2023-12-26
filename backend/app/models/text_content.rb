# frozen_string_literal: true

class TextContent < ApplicationRecord
  belongs_to :topic
  has_many :text_values, dependent: :destroy
end
