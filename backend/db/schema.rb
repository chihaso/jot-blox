# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_26_230048) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "binary_forms", force: :cascade do |t|
    t.string "true_label", null: false
    t.string "false_label", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "binary_values", force: :cascade do |t|
    t.boolean "value"
    t.date "record_date", null: false
    t.bigint "binary_form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["binary_form_id"], name: "index_binary_values_on_binary_form_id"
    t.index ["record_date", "binary_form_id"], name: "index_binary_values_on_record_date_and_binary_form_id", unique: true
  end

  create_table "contents", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date", null: false
    t.datetime "end_date"
    t.bigint "topic_id", null: false
    t.string "form_type"
    t.bigint "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_type", "form_id"], name: "index_contents_on_form"
    t.index ["topic_id"], name: "index_contents_on_topic_id"
  end

  create_table "date_time_forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "date_time_values", force: :cascade do |t|
    t.datetime "value"
    t.date "record_date", null: false
    t.bigint "date_time_form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date_time_form_id"], name: "index_date_time_values_on_date_time_form_id"
    t.index ["record_date", "date_time_form_id"], name: "index_date_time_values_on_record_date_and_date_time_form_id", unique: true
  end

  create_table "float_forms", force: :cascade do |t|
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "float_values", force: :cascade do |t|
    t.float "value"
    t.date "record_date", null: false
    t.bigint "float_form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["float_form_id"], name: "index_float_values_on_float_form_id"
    t.index ["record_date", "float_form_id"], name: "index_float_values_on_record_date_and_float_form_id", unique: true
  end

  create_table "integer_forms", force: :cascade do |t|
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "integer_values", force: :cascade do |t|
    t.integer "value"
    t.date "record_date", null: false
    t.bigint "integer_form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["integer_form_id"], name: "index_integer_values_on_integer_form_id"
    t.index ["record_date", "integer_form_id"], name: "index_integer_values_on_record_date_and_integer_form_id", unique: true
  end

  create_table "multi_level_forms", force: :cascade do |t|
    t.string "left_label", null: false
    t.string "right_label", null: false
    t.integer "size", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "multi_level_values", force: :cascade do |t|
    t.integer "value"
    t.date "record_date", null: false
    t.bigint "multi_level_form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["multi_level_form_id"], name: "index_multi_level_values_on_multi_level_form_id"
    t.index ["record_date", "multi_level_form_id"], name: "idx_on_record_date_multi_level_form_id_ffd2677cfb", unique: true
  end

  create_table "record_blocks", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date", null: false
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "text_forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "text_values", force: :cascade do |t|
    t.text "value"
    t.date "record_date", null: false
    t.bigint "text_form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_date", "text_form_id"], name: "index_text_values_on_record_date_and_text_form_id", unique: true
    t.index ["text_form_id"], name: "index_text_values_on_text_form_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date", null: false
    t.datetime "end_date"
    t.bigint "record_block_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_block_id"], name: "index_topics_on_record_block_id"
  end

  add_foreign_key "binary_values", "binary_forms"
  add_foreign_key "contents", "topics"
  add_foreign_key "date_time_values", "date_time_forms"
  add_foreign_key "float_values", "float_forms"
  add_foreign_key "integer_values", "integer_forms"
  add_foreign_key "multi_level_values", "multi_level_forms"
  add_foreign_key "text_values", "text_forms"
  add_foreign_key "topics", "record_blocks"
end
