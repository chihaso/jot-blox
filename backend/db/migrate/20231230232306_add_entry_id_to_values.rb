# frozen_string_literal: true

class AddEntryIdToValues < ActiveRecord::Migration[7.1]
  def change
    add_reference :multi_level_values, :entries, foreign_key: true
    add_reference :binary_values, :entries, foreign_key: true
    add_reference :text_values, :entries, foreign_key: true
    add_reference :integer_values, :entries, foreign_key: true
    add_reference :float_values, :entries, foreign_key: true
    add_reference :date_time_values, :entries, foreign_key: true
  end
end
