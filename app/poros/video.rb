class Video 
  attr_reader :video_id, :title, :country

  def initialize(attributes, country)
    @video_id = attributes[:id][:videoId]
    @title = attributes[:snippet][:title]
    @country = country 

  end
end