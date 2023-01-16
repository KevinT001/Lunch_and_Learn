require 'rails_helper' 

RSpec.describe 'Recipe Poros' do 
  before :each do 
    @country = "Mexico"
    @recipe_info = { :recipe =>
                    { :id => nil,
                      :label => "Tamale",
                      :url => "www.cornhusk.com/tamles",
                      :country => @country, 
                      :image => "www.jpg.com/tamales"
                    }
                   }

    @recipe = Recipe.new(@recipe_info, @country)
  end
  it 'exists' do 
    expect(@recipe).to be_a Recipe
  end

  it 'has attributes' do 

    expect(@recipe.title).to eq("Tamale")
    expect(@recipe.id).to eq(nil)
    expect(@recipe.image).to eq("www.jpg.com/tamales")
    expect(@recipe.country).to eq("Mexico")
    expect(@recipe.url).to eq("www.cornhusk.com/tamles")
  end
end