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

  def update
    @meal= Meal.find(params[:id])
    @meal.update(meal_params)
    if @meal.save
      render json: {
                    meal: @meal,
                    meals: find_horses(user_in_session).map{|h| h.meals}.flatten
                  }
    else
      render json: {
        errors: @meal.errors.full_messages
      }
    end
  end

  def destroy
    @meal=Meal.find(params[:id])
    @meal.delete
    render json: {
      meals:find_horses(user_in_session).map{|h| h.meals}.flatten
    }
  end

    private

    def meal_params
      params.require(:meal).permit(:supply_id, :quantity, :measurement, :time, :supplements, :horse_id)
    end

end
