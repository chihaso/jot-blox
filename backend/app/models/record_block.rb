# frozen_string_literal: true

class RecordBlock < ApplicationRecord
  has_many :topics, dependent: :destroy
end
