# frozen_string_literal: true

class CreateContents < ActiveRecord::Migration[7.1]
  def change
    create_table :contents do |t|
      t.string :name
      t.datetime :start_date, null: false
      t.datetime :end_date
      t.references :topic, null: false, foreign_key: true
      t.references :form, polymorphic: true

      t.timestamps
    end

    create_table :multi_level_forms do |t|
      t.string :left_label, null: false
      t.string :right_label, null: false
      t.integer :size, null: false

      t.timestamps
    end

    create_table :binary_forms do |t|
      t.string :true_label, null: false
      t.string :false_label, null: false

      t.timestamps
    end

    create_table :integer_forms do |t|
      t.string :unit

      t.timestamps
    end

    create_table :float_forms do |t|
      t.string :unit

      t.timestamps
    end

    create_table :text_forms do |t|

      t.timestamps
    end

    create_table :date_time_forms do |t|

      t.timestamps
    end
  end
end
