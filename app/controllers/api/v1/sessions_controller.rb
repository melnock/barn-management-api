class Api::V1::SessionsController < ApplicationController

  # skip_before_action :authenticate!, only: [:create]
  #
  # def create
  #   @user = User.find_by(email: params[:email])
  #
  #   if @user && @user.authenticate(params["password"])
  #     stalls = @user.barn.stalls
  #     horses = stalls.map{|stall| stall.horse }
  #
  #     render json: {user:user_hash(@user),
  #                   horses: horses }
  #   else
  #     render json: { errors: ["those credentials don't match anything we've got in our database"]}, :status => :unprocessable_entity
  #   end
  # end



  def login
		@user = User.find_by(email: params[:email])

		if @user && @user.authenticate(params[:password])
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

	def get_user
		if user_in_session
			render json: {user: user_in_session,
										horses: find_horses(user_in_session),
                    barns: Barn.all
									}
		else
			render json: {error: "Something doesn't match up",
                    barns: Barn.all
                    }
		end

	end

end
