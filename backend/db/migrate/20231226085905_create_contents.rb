# frozen_string_literal: true

class CreateContents < ActiveRecord::Migration[7.1]
  def change
    create_table :multi_level_contents do |t|
      t.string :name
      t.string :left_label, null: false
      t.string :right_label, null: false
      t.integer :size, null: false
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end

    create_table :binary_contents do |t|
      t.string :name
      t.string :false_label, null: false
      t.string :true_label, null: false
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end

    create_table :integer_contents do |t|
      t.string :name
      t.string :unit
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end

    create_table :float_contents do |t|
      t.string :name
      t.string :unit
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end

    create_table :text_contents do |t|
      t.string :name
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end

    create_table :date_time_contents do |t|
      t.string :name
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
