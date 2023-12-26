# frozen_string_literal: true

class MultiLevelContent < ApplicationRecord
  belongs_to :topic
  has_many :multi_level_values, dependent: :destroy
end
