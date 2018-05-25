class Api::V1::MealsController < ApplicationController

  def create
    @meal= Meal.new(meal_params)

    if @meal.save
      render json: @meal
    else
      render json: {
        errors: @meal.errors.full_messages
      }
    end
  end

    private

    def meal_params
      params.require(:meal).permit(:supply_id, :quantity, :measurement, :time, :supplements, :horse_id)
    end

end
