# frozen_string_literal: true

class DailyRecordsController < ApplicationController
  def show
    daily_records = daily_entries.map(&:daily_record)
    render json: daily_records
  end

  private

  def daily_entries
    @daily_entries ||= Entry.where(record_date: params[:date])
  end
end
