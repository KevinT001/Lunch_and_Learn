class Api::V1::LearningResourcesController < ApplicationController
  def show 
    VideoFacade.video_results_info(params[:country])
  end
end 