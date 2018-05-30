class Api::V1::UsersController < ApplicationController

  def create

    @user = User.new(user_params)
    if @user.save
      token = encode({user_id: @user.id})
      barn = Barn.find(@user.barn_id)
			render json: {user: @user,
                    horses: find_horses(@user),
										jwt: token,
                    barns: Barn.all,
                    current_barn: barn,
                    vets: Vet.all,
                    farriers: Farrier.all,
                    paddocks: barn.paddocks,
                    stalls: barn.stalls,
                    users: barn.users,
                    healthreports: find_horses(@user).map{|h| h.healthreports}.flatten,
                    supplies: Supply.all,
                    meals: find_horses(@user).map{|h| h.meals}.flatten
									}
    else
      render json: {error: @user.errors.full_messages}
    end
  end

  def show
    @user = User.all.find(params[:id])
    render json: @user
  end

  def update
    @user = User.all.find(params[:id])
    byebug
    @user.update(user_params)
    if @user
      render json: {users: User.all}
    else
      render json: {error: @user.errors.full_messages}
    end
  end

  private

  def user_params
    params.require(:user).permit([:name, :barn_id, :email, :password, :password_confirmation, :emergency_contact, :mailing_address, :phone_number, :is_manager, :is_employee])
  end
end
