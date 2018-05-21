class Api::V1::FarriersController < ApplicationController
  def create
    @farrier= Farrier.new(farrier_params)

    if @farrier.save
      render json: @farrier
    else
      render json: {
        errors: @farrier.errors.full_messages
      }
    end
  end

    private

    def farrier_params
      params.require(:farrier).permit(:name, :practice_name, :phone_number, :pager_number, :email, :address)
    end

end
