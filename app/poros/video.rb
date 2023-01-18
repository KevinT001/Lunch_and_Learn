class Video 
  attr_reader :youtube_video_id, :title, :country

  def initialize(attributes)

    @title = attributes[:snippet][:title]
    @youtube_video_id = attributes[:id][:videoId]
    # @country = country 

  end
end