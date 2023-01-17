require 'rails_helper' 

RSpec.describe 'airquality facade' do 

  it '.retrieved_air_quality_on(country)' do 
    india_lat = 20
    india_lon = 77
        air_data = AirQualityService.get_air_quality_info(india_lat, india_lon)

    expect(air_data.india_lat).to eq(20)
    expect(air_data.india_lon).to eq(77)

    expect(air_data)

  end
end