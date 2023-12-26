# frozen_string_literal: true

class RecordBlocksController < ApplicationController
  def index
    @record_blocks = RecordBlock.all

    render json: @record_blocks
  end
end
