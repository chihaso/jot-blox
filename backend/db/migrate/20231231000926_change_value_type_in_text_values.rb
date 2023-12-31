# frozen_string_literal: true

class ChangeValueTypeInTextValues < ActiveRecord::Migration[7.1]
  def change
    change_column :text_values, :value, :text
  end
end
