class Api::V1::HorsesController < ApplicationController
  def create
    @horse= Horse.new(horse_params)
    
    if @horse.save
      render json: @horse
    else
      render json: {
        errors: @horse.errors.full_messages
      }
    end

  end

  private

  def horse_params
    params.require(:horse).permit([:stall_id, :user_id, :blankets, :birth_year, :supplements, :tack, :image, :name, :farrier_id, :vet_id, :paddock_id])
  end

end
