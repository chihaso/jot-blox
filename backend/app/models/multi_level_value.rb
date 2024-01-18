# frozen_string_literal: true

class MultiLevelValue < ApplicationRecord
  belongs_to :content, class_name: 'MultiLevelContent', foreign_key: :multi_level_content_id, inverse_of: :values
  belongs_to :entry, foreign_key: :entries_id, inverse_of: :multi_level_values
end
