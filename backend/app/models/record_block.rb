# frozen_string_literal: true

class RecordBlock < ApplicationRecord
  has_many :topics, dependent: :destroy
  has_many :entries, dependent: :destroy

  def settings
    {
      id:,
      name:,
      topics: topics.map(&:settings)
    }
  end
end
