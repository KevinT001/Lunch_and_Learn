class Api::V1::Users < ApplicationController
  def create
    user = User.new(user_params)
    user.api_key = SecureRandom.hex(6)

    if User.find_by(params[:email]).present? 
      render :json => { :errors => user.errors.full_messages } => 400
      
    else 

      user = User.create!(user_params) 
      render json:UsersSerializer.new(user) && render :json => status: 201
  end
end

  private
  user_params = (:name, :email, :api_key)
end 