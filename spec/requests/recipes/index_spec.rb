require 'rails_helper'

RSpec.describe 'recipe index' do 

  describe 'can connect to request endpoint successfully' do 
    it 'can return a JSON response' do 
      VCR.insert_cassette "can_return_a JSON_response"
      country = "Thailand" 
      
      get "/api/v1/recipes?country=#{country}"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body,symbolize_names: true)
      
      expect(parsed_response).to be_a Hash
      expect(parsed_response).to have_key(:data)
      expect(parsed_response[:data]).to be_an Array
      expect(parsed_response[:data].first).to have_key(:id)
      expect(parsed_response[:data].first).to have_key(:type)
      expect(parsed_response[:data].first[:type]).to eq("recipes")
      expect(parsed_response[:data].first[:attributes]).to have_key(:id)
      expect(parsed_response[:data].first[:attributes]).to be_a Hash
      expect(parsed_response[:data].first[:attributes]).to have_key(:title)
      expect(parsed_response[:data].first[:attributes][:title]).to be_a String
      expect(parsed_response[:data].first[:attributes][:title]).to eq("Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)")
      VCR.eject_cassette
    end

    it 'can get recipes for a user if country params arent filled' do 
      VCR.insert_cassette "can_get_recipes_for_a_user_if_country_params_arent_filled"
            get "/api/v1/recipes"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body,symbolize_names: true)
      
       expect(parsed_response).to be_a Hash
      expect(parsed_response).to have_key(:data)
      expect(parsed_response[:data]).to be_an Array
      expect(parsed_response[:data].first[:type]).to eq("recipes")
      expect(parsed_response[:data].first[:attributes]).to have_key(:id)
      expect(parsed_response[:data].first[:attributes]).to be_a Hash
      expect(parsed_response[:data].first[:attributes]).to have_key(:title)
      expect(parsed_response[:data].first[:attributes][:title]).to be_a String
      VCR.eject_cassette
    end

    it 'will return error / blank data hash if bad info is inputted', :vcr do 
      country = " " 

      get "/api/v1/recipes?country=#{country}"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body,symbolize_names: true)

      expect(parsed_response).to eq({"data": []})
    end

    it 'will return blank data hash if gibberish/ no recipe for non existant country is input', :vcr  do 
      country = "FallingClouds" 

      get "/api/v1/recipes?country=#{country}"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body,symbolize_names: true)

      expect(parsed_response).to eq({"data": []})
    end
  end

  describe 'edgecase for country font case' do 
   it 'edgecase test for country name mixed case text', :vcr do 
    country = "ThAiLaNd" 

      get "/api/v1/recipes?country=#{country}"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body,symbolize_names: true)
      
      expect(parsed_response).to be_a Hash
      expect(parsed_response).to have_key(:data)
      expect(parsed_response[:data]).to be_an Array
      expect(parsed_response[:data].first).to have_key(:id)
      expect(parsed_response[:data].first[:type]).to eq("recipes")
      expect(parsed_response[:data].first[:attributes]).to have_key(:id)
      expect(parsed_response[:data].first[:attributes]).to be_a Hash
      expect(parsed_response[:data].first[:attributes]).to have_key(:title)
      expect(parsed_response[:data].first[:attributes][:title]).to be_a String
      expect(parsed_response[:data].first[:attributes][:title]).to eq("Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)")
    end
  end 
end