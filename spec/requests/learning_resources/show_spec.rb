require 'rails_helper' 

RSpec.describe 'learning_resource show' do 
  describe 'can connect to endpoint sucessfully' do 
    it 'can returna JSON response from the endpoint', :vcr do 
      country = "laos"
      get "/api/v1/learning_resources?country=#{country}"
      
      expect(response).to be_successful

      parsed_response = JSON.parse(response.body, symbolize_names: true)
      
      expect(parsed_response).to be_a Hash
      expect(parsed_response).to have_key(:data)
      expect(parsed_response[:data]).to have_key(:id) 
      expect(parsed_response[:data]).to have_key(:type)
      expect(parsed_response[:data]).to have_key(:attributes)
      expect(parsed_response[:data][:attributes]).to have_key(:country)
      expect(parsed_response[:data][:attributes][:country]).to eq("laos")
      expect(parsed_response[:data][:attributes]).to have_key(:video)
      expect(parsed_response[:data][:attributes][:video]).to be_a Hash
      expect(parsed_response[:data][:attributes][:video]).to have_key(:title)
      expect(parsed_response[:data][:attributes][:video][:title]).to eq("A Super Quick History of Laos")
      expect(parsed_response[:data][:attributes][:video]).to have_key(:youtube_video_id)
      expect(parsed_response[:data][:attributes]).to have_key(:images) 
    end
  end
end