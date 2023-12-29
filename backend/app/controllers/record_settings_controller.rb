# frozen_string_literal: true

class RecordSettingsController < ApplicationController
  def index
    render json: RecordBlock.all.map(&:settings)
  end
end
