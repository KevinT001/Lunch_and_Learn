class Api::V1::AirQualityController < ApplicationController

  def show 
    @result = CountryFacade.user_chosen_country(params[:country]).first 
    @air_quality = AirQualityFacade.retrieved_air_quality_on(@result.name)

    render json.AirQualitySerializer.new(@air_quality)
  end
end