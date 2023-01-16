require 'rails_helper'

RSpec.describe CountryFacade do

  it '.all_countries' do 
    countries = CountryFacade.all_countries
    expect(countries).to be_an(Array)
  end

  it '.random_country' do 
    random = CountryFacade.random_country
    expect(random).to be_an_instance_of(Country)
    expect(random.name).to be_an(String)
  end
end