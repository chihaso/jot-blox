# frozen_string_literal: true

class TextValue < ApplicationRecord
  belongs_to :text_content
  belongs_to :entry
end
