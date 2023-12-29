# frozen_string_literal: true

class BinaryContent < ApplicationRecord
  belongs_to :topic
  has_many :binary_values, dependent: :destroy

  def settings
    {
      id:,
      name:,
      type: 'binary',
      false_label:,
      true_label:
    }
  end
end
