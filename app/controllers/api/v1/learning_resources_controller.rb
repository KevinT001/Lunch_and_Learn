class Api::V1::LearningResourcesController < ApplicationController
  def show 
    VideoFacade.video_results_info(params[:country])
    PhotoFacade.photo_results(params[:country])
  end
end 