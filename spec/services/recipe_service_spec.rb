require 'rails_helper'

RSpec.describe 'RecipeService' do 

  it '.retrieve_recipes(country)' do 
  recipes = RecipeService.retrieve_recipes("Thailand")
    
    expect(recipes).to be_a Hash 
    expect(recipes).to have_key(:hits)
    expect(recipes[:hits]).to be_a Array
    expect(recipes[:hits].first).to have_key(:recipe)
    expect(recipes[:hits].first[:recipe]).to be_a Hash
    expect(recipes[:hits].first[:recipe]).to have_key(:uri)
    expect(recipes[:hits].first[:recipe]).to have_key(:label)
    expect(recipes[:hits].first[:recipe]).to have_key(:image)
  end 

end