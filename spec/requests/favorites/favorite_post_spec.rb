require 'rails_helper'

RSpec.describe 'favorite post end point' do 
  it 'returns a successful response when user favorite is created' do 
    user = User.create!(name: 'Spencer Corgi', email: 'Corgi_dog@bread.com', api_key: SecureRandom.hex(6))

    fav_params = {
                  "api_key": user.api_key,
                  "country": 'thailand',
                  "recipe_link": 'https://www.tastingtable.com/.....',
                  "recipe_title": 'Crab Fried Rice (Khaao Pad Bpu)'
                  }
    
    expect(user.favorites.count).to eq(0)
    
    post '/api/v1/favorites', params: fav_params
# binding.pry
    expect(user.favorites.count).to eq(1)
    parsed_response = JSON.parse(response.body, symbolize_names: true)
    expect(response).to have_http_status(201) #successful
    expect(response).to be_successful 
        second_fav_params = {
                  "api_key": user.api_key,
                  "country": 'thailand',
                  "recipe_link": 'https://www.tastingtable.com/.....',
                  "recipe_title": 'Crab Fried Rice (Khaao Pad Bpu)'
                  }
      post '/api/v1/favorites', params: second_fav_params

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(user.favorites.count).to eq(2)
    expect(response).to be_successful 
  end

  describe 'sad path' do 
    it 'returns error message if user has invalid/bad api_key' do 
      user = User.create!(name: 'Spencer Corgi', email: 'Corgi_dog@bread.com', api_key: SecureRandom.hex(6))
         fav_params = {
                  "api_key": "password123",
                  "country": 'thailand',
                  "recipe_link": 'https://www.tastingtable.com/.....',
                  "recipe_title": 'Crab Fried Rice (Khaao Pad Bpu)'
                  }
      post '/api/v1/favorites', params: fav_params

      expect(user.favorites.count).to eq(0)
      parsed_response = JSON.parse(response.body, symbolize_names: true)
      expect(response).to have_http_status(201)
      
    end
  end

end