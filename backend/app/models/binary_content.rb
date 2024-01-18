# frozen_string_literal: true

class BinaryContent < ApplicationRecord
  belongs_to :topic
  has_many :values, class_name: 'BinaryValue', inverse_of: :content, dependent: :destroy

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
