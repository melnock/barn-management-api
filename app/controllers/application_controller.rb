class ApplicationController < ActionController::API

  include ActionController::HttpAuthentication::Token::ControllerMethods

  # before_action :authenticate!

  # def authenticate!
  #   logged_in?
  # end

  def user_hash(user)
    {
      user_id: user.id,
      email: user.email,
      name: user.name,
      is_manager: user.is_manager,
      is_employee: user.is_employee,
      emergency_contact: user.emergency_contact,
      phone_number: user.phone_number,
      token: token_for_user(user)
    }
  end

  # def token_for_user(user)
  #   JWT.encode({ user_id: user.id }, jwt_secret_key)
  # end
  #
  # #authentication
  # def logged_in?
  #   !!current_user_id
  # end
  #
  # #authorization
  # def current_user_id
  #   unless @current_user_id
  #     token = try_decode_token
  #     if token
  #       @current_user_id = token[0]["user_id"]
  #     else
  #       nil
  #     end
  #   end
  #   @current_user_id
  # end

  def encode(payload)
		JWT.encode(payload, jwt_secret_key)
	end

	def decode
		jwt = request.headers["Authorization"]
		JWT.decode(jwt, jwt_secret_key)[0]
	end

	def user_in_session
		id = decode["user_id"]
		User.find(id)
	end

  def find_horses(user)
    stalls = user.barn.stalls
    horses_in_stalls = stalls.map{|stall| stall.horse }
    horses= horses_in_stalls.select{|horse| horse != nil}
  end

  private
  # def try_decode_token
  #   decoded = nil
  #
  #   authenticate_or_request_with_http_token do |token, options|
  #
  #     begin
  #       decoded = JWT.decode(token, jwt_secret_key)
  #     rescue JWT::DecodeError => e
  #       return nil
  #     end
  #
  #   end
  #
  #   return decoded
  # end

  def jwt_secret_key
    # ENV["JWT_SECRET_KEY"]
    "21MAgiCal_Mystery_KEY!12"
  end
end
