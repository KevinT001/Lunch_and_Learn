class VideoFacade

  def self.video_results_info(country)
    results = VideoService.retrieve_video(country)
    results[:items].map do |info|
      Video.new(info, country)
    end
  end
end





# videoid parsed[:items].first[:id][:videoId]
# title parsed[:items].first[:snippet][:title]