# frozen_string_literal: true

class Content < ApplicationRecord
  FORM_CLASSES = %w[MultiLevelForm BinaryForm IntegerForm FloatForm TextForm DateTimeForm].freeze

  belongs_to :topic
  delegated_type :form, types: FORM_CLASSES

  class << self
    # Define create_with_<contentable_type>! methods
    #   create_with_multi_level_form!({ topic:, name: 'foo' }, { left_label: 'few', right_label: 'many', size: 10 })
    FORM_CLASSES.each do |class_name|
      define_method "create_with_#{class_name.underscore}!" do |content_attributes = {}, form_attributes = {}|
        transaction do
          form = class_name.constantize.create!(form_attributes)
          create!(**content_attributes, form:)
        end
      end
    end
  end
end
