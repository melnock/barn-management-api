class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate!, only: :create

  def create

    @user = User.new(user_params)
    if @user.save
      token = encode({user_id: @user.id})
      render json: {user: @user,
                    horses: find_horses(@user),
                    jwt: token,
                    barns: Barn.all
                  }
    else
      render json: {error: "Something doesn't match up"}
    end
  end

  def show
    @user = User.all.find(params[:id])
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit([:name, :email, :password, :password_confirmation, :emergency_contact, :phone_number, :is_manager, :is_employee])
  end
end
