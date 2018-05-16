class Api::V1::VetsController < ApplicationController

  def create
    @vet= Vet.new(vet_params)

    if @vet.save
      render json: @vet
    else
      render json: {
        errors: @vet.errors.full_messages
      }
    end

    private

    def vet_params
      params.require(:vet).permit(:name, :practice_name, :phone_number, :pager_number, :email, :address)
    end

end
