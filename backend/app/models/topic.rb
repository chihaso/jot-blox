# frozen_string_literal: true

class Topic < ApplicationRecord
  belongs_to :record_block
  has_many :contents, dependent: :destroy

  def settings
    {
      id:,
      name:,
      contents: contents.map(&:settings)
    }
  end
end
