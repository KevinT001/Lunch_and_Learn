require 'rails_helper'

RSpec.describe 'Can Connect successfully to endpoint' do

  it 'shows successful response from end point' do 

    get "/api/v1/air_quality?country=India"

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body,symbolize_names: true)
  end 


end