# frozen_string_literal: true

class MultiLevelValue < ApplicationRecord
  belongs_to :multi_level_content
  belongs_to :entry
end
