# frozen_string_literal: true

class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.date :record_date
      t.references :record_block, null: false, foreign_key: true

      t.timestamps
    end
  end
end
