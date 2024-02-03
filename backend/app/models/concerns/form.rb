# frozen_string_literal: true

module Form
  extend ActiveSupport::Concern

  included do
    has_one :content, as: :form, touch: true, dependent: :destroy
  end
end
