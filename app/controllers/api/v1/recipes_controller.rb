class Api::V1::RecipesController < ApplicationController 
  def index
    recipes = RecipeFacade.search_recipes([:country])
    render json:RecipeSerializer.formet_recipes(recipes)
  end
end