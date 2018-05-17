class Api::V1::HealthreportsController < ApplicationController

  def create
    @healthreport= Healthreport.new(healthreport_params)

    if @healthreport.save
      render json: @healthreport
    else
      render json: {
        errors: @healthreport.errors.full_messages
      }
    end

  end

  private

  def healthreport_params
    params.require(:healthreport).permit([:user_id, :horse_id, :hay, :water, :grain, :comments, :manure])
  end

end
