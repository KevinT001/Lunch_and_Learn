require 'rails_helper' 

RSpec.describe 'RecipeFacade' do 
  it '.recipe_results(country)', :vcr do 
    countries_recipes = RecipesFacade.recipe_results("Thailand")
    first_recipe = countries_recipes.first 

    expect(countries_recipes).to be_an(Array)
    expect(first_recipe.country).to eq("Thailand")
    expect(first_recipe.id).to eq(nil)
    expect(first_recipe.image).to be_a String
    expect(first_recipe.title).to be_a String
    expect(first_recipe.url).to be_a String
    
  end
end