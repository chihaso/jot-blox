# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

diary_block = RecordBlock.find_or_create_by!(name: "日記")
diary_topic = diary_block.topics.find_or_create_by!({})
diary_topic.text_contents.find_or_create_by!({})

cat_block = RecordBlock.find_or_create_by!(name: "猫の記録")
cat_stool_topic = cat_block.topics.find_or_create_by!(name: "うんち")
cat_stool_topic.multi_level_contents.find_or_create_by!(name: "量", left_label: "少ない", right_label: "多い", size: 10)
cat_stool_topic.multi_level_contents.find_or_create_by!(name: "毛量", left_label: "少ない", right_label: "多い", size: 4)
cat_urine_topic = cat_block.topics.find_or_create_by!(name: "おしっこ")
cat_urine_topic.integer_contents.find_or_create_by!(name: "回数", unit: "回")
