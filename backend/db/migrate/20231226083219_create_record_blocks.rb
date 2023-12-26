# frozen_string_literal: true

class CreateRecordBlocks < ActiveRecord::Migration[7.1]
  def change
    create_table :record_blocks do |t|
      t.string :name

      t.timestamps
    end
  end
end
