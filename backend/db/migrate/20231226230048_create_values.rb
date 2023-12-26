# frozen_string_literal: true

class CreateValues < ActiveRecord::Migration[7.1]
  def change
    create_table :multi_level_values do |t|
      t.integer :value
      t.references :multi_level_content, null: false, foreign_key: true

      t.timestamps
    end

    create_table :binary_values do |t|
      t.boolean :value
      t.references :binary_content, null: false, foreign_key: true

      t.timestamps
    end

    create_table :integer_values do |t|
      t.integer :value
      t.references :integer_content, null: false, foreign_key: true

      t.timestamps
    end

    create_table :float_values do |t|
      t.float :value
      t.references :float_content, null: false, foreign_key: true

      t.timestamps
    end

    create_table :text_values do |t|
      t.integer :value
      t.references :text_content, null: false, foreign_key: true

      t.timestamps
    end

    create_table :date_time_values do |t|
      t.datetime :value
      t.references :date_time_content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
