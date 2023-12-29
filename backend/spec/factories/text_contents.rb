# frozen_string_literal: true

FactoryBot.define do
  factory :text_content do
    name { 'Text Content Name' }
    topic
  end
end
