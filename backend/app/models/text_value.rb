# frozen_string_literal: true

class TextValue < ApplicationRecord
  belongs_to :content, class_name: 'TextContent', foreign_key: :text_content_id, inverse_of: :values
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :text_values
end
