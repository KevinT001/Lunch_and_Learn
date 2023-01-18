require 'rails_helper'

RSpec.describe 'favorite index' do 

  it 'can return successful response to favorites endpoint' do 
    user = User.create!(name: 'Spencer Corgi', email: 'Corgi_dog@bread.com', api_key: SecureRandom.hex(6))

    # api_key = SecureRandom.hex(6)

    favorite_recipe_1 = user.favorites.create!(country: 'thailand', recipe_link: 'https://www.tastingtable.com/..',recipe_title: 'Crab Fried Rice (Khaao Pad Bpu)')
    favorite_recipe_2 = user.favorites.create!(country: 'Argentina',recipe_link: 'https://www.argentinatable.com/..',recipe_title: 'Traditional New Year Dish')
    
    get "/api/v1/favorites", params: { "api_key": user.api_key }

    expect(response).to be_successful 
    expect(response).to have_http_status(200)
    parsed_response = JSON.parse(response.body, symbolize_names: true)
    
    expect(parsed_response).to be_a Hash
    expect(parsed_response).to have_key(:data)
    expect(parsed_response[:data][0][:id]).to be_a String
    expect(parsed_response[:data][0][:attributes][:country]).to eq("thailand")
    expect(parsed_response[:data][1][:attributes][:country]).to eq("Argentina")
    expect(parsed_response[:data].count).to eq(2)
  end


end