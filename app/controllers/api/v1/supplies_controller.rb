class Api::V1::SuppliesController < ApplicationController

  def create
    @supply= Supply.new(supply_params)

    if @supply.save
      render json: @supply
    else
      render json: {
        errors: @supply.errors.full_messages
      }
    end
  end

  def show
    @supply= Supply.find(params[:id])

    if @supply
      render json: @supply
    else
      render json: {
        errors: @supply.errors.full_messages
      }
    end
  end

  private

  def supply_params
    params.require(:supply).permit([ :type_of_supply, :vendor, :cost, :weight, :brand, :name, :protein_fiber_fat => [:protein, :fiber, :fat]])
  end



end
