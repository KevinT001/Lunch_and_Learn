class Users < ApplicationController
  def create
    user = user.new(user_params)

    if User.find_by(params[:email]).present? 
      render :json => { :errors => user.errors.full_messages } => 409
      
    else 
    user = User.create!(user_params)
    render json:UsersSerializer.new(user)
  end
end

  private
  user_params = (:name, :email, :api_key)
end 