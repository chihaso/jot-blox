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

ActiveRecord::Schema[7.1].define(version: 2023_12_30_232306) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "binary_contents", force: :cascade do |t|
    t.string "name"
    t.string "false_label", null: false
    t.string "true_label", null: false
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_binary_contents_on_topic_id"
  end

  create_table "binary_values", force: :cascade do |t|
    t.boolean "value"
    t.bigint "binary_content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "entries_id"
    t.index ["binary_content_id"], name: "index_binary_values_on_binary_content_id"
    t.index ["entries_id"], name: "index_binary_values_on_entries_id"
  end

  create_table "date_time_contents", force: :cascade do |t|
    t.string "name"
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_date_time_contents_on_topic_id"
  end

  create_table "date_time_values", force: :cascade do |t|
    t.datetime "value"
    t.bigint "date_time_content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "entries_id"
    t.index ["date_time_content_id"], name: "index_date_time_values_on_date_time_content_id"
    t.index ["entries_id"], name: "index_date_time_values_on_entries_id"
  end

  create_table "entries", force: :cascade do |t|
    t.date "record_date"
    t.bigint "record_block_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_block_id"], name: "index_entries_on_record_block_id"
  end

  create_table "float_contents", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_float_contents_on_topic_id"
  end

  create_table "float_values", force: :cascade do |t|
    t.float "value"
    t.bigint "float_content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "entries_id"
    t.index ["entries_id"], name: "index_float_values_on_entries_id"
    t.index ["float_content_id"], name: "index_float_values_on_float_content_id"
  end

  create_table "integer_contents", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_integer_contents_on_topic_id"
  end

  create_table "integer_values", force: :cascade do |t|
    t.integer "value"
    t.bigint "integer_content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "entries_id"
    t.index ["entries_id"], name: "index_integer_values_on_entries_id"
    t.index ["integer_content_id"], name: "index_integer_values_on_integer_content_id"
  end

  create_table "multi_level_contents", force: :cascade do |t|
    t.string "name"
    t.string "left_label", null: false
    t.string "right_label", null: false
    t.integer "size", null: false
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_multi_level_contents_on_topic_id"
  end

  create_table "multi_level_values", force: :cascade do |t|
    t.integer "value"
    t.bigint "multi_level_content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "entries_id"
    t.index ["entries_id"], name: "index_multi_level_values_on_entries_id"
    t.index ["multi_level_content_id"], name: "index_multi_level_values_on_multi_level_content_id"
  end

  create_table "record_blocks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "text_contents", force: :cascade do |t|
    t.string "name"
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_text_contents_on_topic_id"
  end

  create_table "text_values", force: :cascade do |t|
    t.integer "value"
    t.bigint "text_content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "entries_id"
    t.index ["entries_id"], name: "index_text_values_on_entries_id"
    t.index ["text_content_id"], name: "index_text_values_on_text_content_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.bigint "record_block_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_block_id"], name: "index_topics_on_record_block_id"
  end

  add_foreign_key "binary_contents", "topics"
  add_foreign_key "binary_values", "binary_contents"
  add_foreign_key "binary_values", "entries", column: "entries_id"
  add_foreign_key "date_time_contents", "topics"
  add_foreign_key "date_time_values", "date_time_contents"
  add_foreign_key "date_time_values", "entries", column: "entries_id"
  add_foreign_key "entries", "record_blocks"
  add_foreign_key "float_contents", "topics"
  add_foreign_key "float_values", "entries", column: "entries_id"
  add_foreign_key "float_values", "float_contents"
  add_foreign_key "integer_contents", "topics"
  add_foreign_key "integer_values", "entries", column: "entries_id"
  add_foreign_key "integer_values", "integer_contents"
  add_foreign_key "multi_level_contents", "topics"
  add_foreign_key "multi_level_values", "entries", column: "entries_id"
  add_foreign_key "multi_level_values", "multi_level_contents"
  add_foreign_key "text_contents", "topics"
  add_foreign_key "text_values", "entries", column: "entries_id"
  add_foreign_key "text_values", "text_contents"
  add_foreign_key "topics", "record_blocks"
end
