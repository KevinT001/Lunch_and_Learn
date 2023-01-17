class AirQualityService

  def self.conn 
    Faraday.new(url: 'http://api.openweathermap.org') do |f|
     f.params['appid'] = ENV['weather_key']
   end
  end

  def self.retrieve_air_quality_on(lat, lon)
    response = conn.get("/data/2.5/air_pollution?lat=#{lat}&lon=#{lon}")
    parsed = JSON.parse(response.body, symbolize_names: true)
 
  end
end