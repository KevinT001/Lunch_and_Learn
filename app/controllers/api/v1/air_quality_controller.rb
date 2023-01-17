class Api::V1::AirQualityController < ApplicationController

  def show 
    @result = CountryFacade.user_chosen_country(params[:country]) 
    
  end
end