# frozen_string_literal: true

class CreateTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.datetime :start_date, null: false
      t.datetime :end_date
      t.references :record_block, null: false, foreign_key: true

      t.timestamps
    end
  end
end
