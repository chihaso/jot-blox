# frozen_string_literal: true

class BinaryForm < ApplicationRecord
  include Form

  has_many :values, class_name: 'BinaryValue', inverse_of: :form, dependent: :destroy

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
