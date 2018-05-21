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
    params.require(:horse).permit([:stall_id, :birth_year, :image, :name, :farrier_id, :vet_id, :paddock_id, :user_id, :supplements =>[], :tack => [:bridle, :saddle, :saddle_pads, :special_equipment],
      :blankets =>[:below_20 => [:type, :color], :below_40=>[:type, :color], :below_30=>[:type, :color], :below_60=> [:type, :color]]])
  end

end
