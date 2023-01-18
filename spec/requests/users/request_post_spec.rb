require 'rails_helper'

RSpec.describe 'User post endpoint' do 
  it 'returns a successful response when user is created' do 
    user_params = {                                                   #when user types in info to register
                    name: 'Kevin',
                    email: 'test@mail.com'
                   }
    
    post '/api/v1/users', params: user_params 
    
    parsed_response = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful 
    expect(response.status).to eq(201)

    expect(parsed_response).to be_a Hash
    expect(parsed_response[:data][:attributes]).to have_key(:name)
    expect(parsed_response[:data][:attributes][:name]).to eq("Kevin")
    expect(parsed_response[:data][:attributes][:name]).to be_a String
    expect(parsed_response[:data][:attributes]).to have_key(:email)
    expect(parsed_response[:data][:attributes][:email]).to be_a String
    expect(parsed_response[:data][:attributes][:email]).to eq('test@mail.com')
    expect(parsed_response[:data]).to have_key(:id)
    expect(parsed_response[:data][:id]).to be_a String
    expect(parsed_response[:data][:type]).to eq("users")
    expect(parsed_response[:data][:attributes]).to have_key(:api_key)
    expect(parsed_response[:data][:attributes][:api_key]).to be_a String
    
  end

  describe 'a sad path test if email is already used to create a user' do 
    it 'gives an error if email is already taken/used' do 
      kevins_params = { 
                        name: "Kevin",
                        email: "hello@email.com"
                      }
      post '/api/v1/users', params: kevins_params 

      kevins_burner_params = { 
                        name: "itsnotKevin",
                        email: "hello@email.com"
                      }
      post '/api/v1/users', params: kevins_burner_params

      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(parsed_response).to eq({:errors=>["Email has already been taken"]})
    end
  end
end