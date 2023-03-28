class Api::CmessagesController < ApplicationController
  def random
    @message = CreateMessage.order('RANDOM()').first
    render json: @message
  end
end
