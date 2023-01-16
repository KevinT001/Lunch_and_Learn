class Api::V1::RecipesController < ApplicationController 
  def index
    if params[:country]
      recipes = RecipesFacade.recipe_results(params[:country])
      
      render json:RecipesSerializer.new(recipes)
   
    elsif params[:country].blank?# if no country then get random country and return random country recipe
    
      country = CountryFacade.random_country
      recipes = RecipesFacade.recipe_results(country.name)
   
      render json:RecipesSerializer.new(recipes)
    else #type in giberish, there will be no data for giberish
      render json: {
                    "data": []
                    }
    end
  end
end