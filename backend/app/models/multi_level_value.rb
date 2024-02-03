# frozen_string_literal: true

class MultiLevelValue < ApplicationRecord
  belongs_to :form, class_name: 'MultiLevelForm', foreign_key: :multi_level_form_id, inverse_of: :values
end
