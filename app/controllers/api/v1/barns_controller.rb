class Api::V1::BarnsController < ApplicationController

  def create
    @barn = Barn.new(barn_params)
    if @barn.save
      make_stalls(@barn)
      make_paddocks(@barn)
      render json: @barn
    else
      render json: {
        errors: @barn.errors.full_messages
      }
    end
  end

  def show
    @barn = Barn.all.find(params[:id])

    render json: @barn
  end

  def index
    @barns = Barn.all

    render json: @barns
  end

  private

  def make_stalls(barn)
    i=0
    barn.number_of_stalls.times do
      Stall.create(barn_id: barn.id, stall_number: i+=1)
    end
  end

  def make_paddocks(barn)
    i=0
    barn.number_of_paddocks.times do
      Paddock.create(barn_id: barn.id)
    end
  end

  def barn_params
    params.require(:barn).permit([:name, :number_of_paddocks, :number_of_stalls, :board_cost,:address=>[:street_address, :city, :state, :zip], :amenities => [], :images=>[:main, :indoor_arena, :outdoor_arena, :paddocks]])
  end
end
