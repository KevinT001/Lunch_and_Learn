require 'rails_helper'

RSpec.describe 'Can Connect successfully to endpoint' do

  it 'shows successful response from end point' do 

    get "/api/v1/air_quality?country=India"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body,symbolize_names: true)

    expect(parsed_response).to be_a Hash 
    expect(parsed_response).to have_key(:data) 
    expect(parsed_response[:data]).to be_a Array
    expect(parsed_response[:data][0]).to have_key(:id)
    expect(parsed_response[:data][0]).to have_key(:type)
    expect(parsed_response[:data][0][:type]).to eq("air_quality")
    expect(parsed_response[:data][0]).to have_key(:attributes)
    expect(parsed_response[:data][0][:attributes]).to be_a Hash
    expect(parsed_response[:data][0][:attributes][:aqi]).to eq(5)
    expect(parsed_response[:data][0][:attributes][:datetime]).to eq(1673981593) #keeps changing due to time
    expect(parsed_response[:data][0][:attributes][:readable_aqi]).to eq("Very Poor")
  end 


end