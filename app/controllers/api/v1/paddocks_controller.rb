class Api::V1::PaddocksController < ApplicationController

  def create
    @paddock = Paddock.new(paddock_params)
    if @paddock.save
      render json: @paddock
    else
      render json: {
        errors: @paddock.errors.full_messages
      }
    end
  end


  private

  def paddock_params
    params.require(:paddock).permit([:capacity, :barn_id])
  end
end
