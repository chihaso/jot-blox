# frozen_string_literal: true

class CreateValues < ActiveRecord::Migration[7.1]
  def change
    create_table :multi_level_values do |t|
      t.integer :value
      t.date :record_date, null: false
      t.references :multi_level_form, null: false, foreign_key: true

      t.timestamps
    end

    create_table :binary_values do |t|
      t.boolean :value
      t.date :record_date, null: false
      t.references :binary_form, null: false, foreign_key: true

      t.timestamps
    end

    create_table :integer_values do |t|
      t.integer :value
      t.date :record_date, null: false
      t.references :integer_form, null: false, foreign_key: true

      t.timestamps
    end

    create_table :float_values do |t|
      t.float :value
      t.date :record_date, null: false
      t.references :float_form, null: false, foreign_key: true

      t.timestamps
    end

    create_table :text_values do |t|
      t.text :value
      t.date :record_date, null: false
      t.references :text_form, null: false, foreign_key: true

      t.timestamps
    end

    create_table :date_time_values do |t|
      t.datetime :value
      t.date :record_date, null: false
      t.references :date_time_form, null: false, foreign_key: true

      t.timestamps
    end

    add_index :multi_level_values, [:record_date, :multi_level_form_id], unique: true
    add_index :binary_values, [:record_date, :binary_form_id], unique: true
    add_index :integer_values, [:record_date, :integer_form_id], unique: true
    add_index :float_values, [:record_date, :float_form_id], unique: true
    add_index :text_values, [:record_date, :text_form_id], unique: true
    add_index :date_time_values, [:record_date, :date_time_form_id], unique: true
  end
end
