require 'rails_helper'

RSpec.describe 'recipe index' do 

  describe 'can connect to request endpoint successfully' do 
    it 'can return a JSON response' do 
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

    end

    it 'can get recipes for a user if country params arent filled ' do 

            get "/api/v1/recipes"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body,symbolize_names: true)
      
       expect(parsed_response).to be_a Hash
      expect(parsed_response).to have_key(:data)
      expect(parsed_response[:data]).to be_an Array
      expect(parsed_response[:data].first).to have_key(:type)
      expect(parsed_response[:data].first[:type]).to eq("recipes")
      expect(parsed_response[:data].first[:attributes]).to have_key(:id)
      expect(parsed_response[:data].first[:attributes]).to be_a Hash
      expect(parsed_response[:data].first[:attributes]).to have_key(:title)
      expect(parsed_response[:data].first[:attributes][:title]).to be_a String
    end

    it 'will return error / blank data hash if bad info is inputted' do 
      country = " " 

      get "/api/v1/recipes?country=#{country}"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body,symbolize_names: true)

      expect(parsed_response).to eq({"data": []})
    end

    it 'will return blank data hash if gibberish/ no recipe for non existant country is input' do 
      country = "FallingClouds" 

      get "/api/v1/recipes?country=#{country}"

      expect(response).to be_successful

      parsed_response = JSON.parse(response.body,symbolize_names: true)

      expect(parsed_response).to eq({"data": []})
    end
  end

  describe 'edgecase for country font case' do 
   it 'edgecase test for country name mixed case text' do 
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