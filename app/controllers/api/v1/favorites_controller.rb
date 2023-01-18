class Api::V1::FavoritesController < ApplicationController 
  def index 
    user = User.find_by(api_key: params[:api_key])
    if user.present? 
      favorites = user.favorites
      render json: FavoritesSerializer.new(favorites), status: 200
    else 
      render json: { error: "No User exists" }, status: 401
    end
  end
  
  
  def create 
    if user = User.find_by(api_key: params[:api_key])
      favorite = user.favorites.new(favorite_params)
      favorite.api_key == user.api_key
      user.save!
      render json: { "success": "Favorite added successfully"}, status: 201
    else
      render json: {error: "Invalid or missing api keys"}, status: 401
    end
  end

  private 

  def favorite_params
    params.permit(:api_key, :country, :recipe_title, :recipe_link)
  end
end