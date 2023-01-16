class RecipesFacade

  def self.recipe_results(country)

    recipe_info  = RecipeService.retrieve_recipes(country)
    recipes = recipe_info[:hits].map do |recipe|
      Recipe.new(recipe, country)
    end
  end
end