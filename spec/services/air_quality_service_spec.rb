require 'rails_helper'

RSpec.describe 'air_quality_service' do 

  it '.get_air_quality_info(lat,lon)' do 

    quality = AirQualityService.get_air_quality_info(20, 77)

    expect(quality).to be_a Hash
    expect(quality).to have_key(:coord)
    expect(quality).to have_key(:list)
    expect(quality[:list]).to be_a Array 
    expect(quality[:list][0]).to have_key(:main)
    expect(quality[:list][0][:main]).to have_key[:aqi]
  end
end   