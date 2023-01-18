class Api::V1::LearningResourcesController < ApplicationController
  def show 
      country = params[:country]
      video = VideoFacade.video_results_info(params[:country])
      images = PhotoFacade.photo_results(params[:country])
      resource = LearningResources.new(country, video, images)
      render json:LearningResourcesSerializer.new(resource)
      
  end
end 