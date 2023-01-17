class Api::V1::LearningResourcesController < ApplicationController
  def show 
    # if params[:country].present?
      video = VideoFacade.video_results_info(params[:country])
      photos = PhotoFacade.photo_results(params[:country])
      
      render json:LearningResourcesSerializer.new(video, photos)
  end
end 