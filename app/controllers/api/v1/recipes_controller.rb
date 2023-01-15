class Api::V1::RecipesController < ApplicationController 
  def index
    country = CountryFacade.all_countries

    # recipes = RecipeFacade.search_recipes([:country])
    # render json:RecipeSerializer.formet_recipes(recipes)
  end
end