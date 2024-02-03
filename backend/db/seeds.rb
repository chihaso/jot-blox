# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

diary_block = RecordBlock.find_or_create_by!(name: "日記", start_date: Date.new(2024, 1, 1))
diary_topic = diary_block.topics.find_or_create_by!(name: nil, start_date: Date.new(2024, 1, 1))
diary_content = Content.create_with_text_form!({ topic: diary_topic, start_date: Date.new(2024, 1, 1) } )
diary_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 1), value: "今日はいい天気だった。")
diary_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 2), value: "今日は雨だった。")
diary_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 3), value: "今日は美味しいものを食べた。")

cat_block = RecordBlock.find_or_create_by!(name: "猫の記録", start_date: Date.new(2024, 1, 1))
cat_stool_topic = cat_block.topics.find_or_create_by!(name: "うんち", start_date: Date.new(2024, 1, 1))
cat_stool_amount_content = Content.create_with_multi_level_form!({ topic: cat_stool_topic, name: "量", start_date: Date.new(2024, 1, 1) }, { left_label: "少ない", right_label: "多い", size: 10 })
cat_stool_amount_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 1), value: 5)
cat_stool_amount_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 2), value: 4)
cat_stool_amount_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 3), value: 6)
cat_stool_hair_amount_content = Content.create_with_multi_level_form!({ topic: cat_stool_topic, name: "毛量", start_date: Date.new(2024, 1, 1) }, { left_label: "少ない", right_label: "多い", size: 4 })
cat_stool_hair_amount_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 1), value: 1)
cat_stool_hair_amount_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 2), value: 3)
cat_stool_hair_amount_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 3), value: 4)

cat_urine_topic = cat_block.topics.find_or_create_by!(name: "おしっこ", start_date: Date.new(2024, 1, 1))
cat_urine_number_content = Content.create_with_integer_form!({ topic: cat_urine_topic, name: "回数", start_date: Date.new(2024, 1, 1) }, { unit: "回" })
cat_urine_number_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 1), value: 3)
cat_urine_number_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 2), value: 3)
cat_urine_number_content.form.values.find_or_create_by!(record_date: Date.new(2024, 1, 3), value: 2)
