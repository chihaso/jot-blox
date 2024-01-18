# frozen_string_literal: true

class DailyRecordsController < ApplicationController
  def show
    render(json: daily_entries.map do |entry|
      record_block = entry.record_block
      {
        name: record_block.name,
        topics: record_block.topics.map do |topic|
          {
            name: topic.name,
            contents: topic.contents.map do |content|
              content_type = content.class.to_s.sub('Content', '').underscore
              value = entry.send("#{content_type}_values").find_by("#{content_type}_content_id": content.id)
              {
                **content.settings,
                value: value.value
              }
            end
          }
        end
      }
    end)
  end

  private

  def daily_entries
    Entry.where(record_date: params[:date])
  end
end
