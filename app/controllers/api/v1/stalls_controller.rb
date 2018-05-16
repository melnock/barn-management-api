class Api::V1::StallsController < ApplicationController
  def create
    @stall= Stall.new(stall_params)

    if @stall.save
      render json: @stall
    else
      render json: {
        errors: @stall.errors.full_messages
      }
    end

  end

  private

  def stall_params
    params.require(:stall).permit([:barn_id, :horse_id, :stall_number])
  end
end
