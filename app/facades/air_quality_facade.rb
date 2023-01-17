class AirQualityFacade
  def self.retrieved_air_quality_on(country)
    lat = CountryFacade.user_chosen_country(country)[0].lattitude
    lon = CountryFacade.user_chosen_country(country)[0].longitude

    air_data = AirQualityService.get_air_quality_info(lat, lon)
      air_data[:list].map do |aq|
         AirQuality.new(aq) 
      end
  end
end
