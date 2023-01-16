require 'rails_helper'

RSpec.describe 'CountryService' do 

  it '.retrieve_all_countries', :vcr do 
    countries = CountryService.retrieve_all_countries
    first_country = countries.first

    expect(countries).to be_a Array
    expect(first_country).to have_key(:name)
    expect(first_country[:name]).to have_key(:common)
    expect(first_country[:name][:common]).to be_a(String)
  end
end