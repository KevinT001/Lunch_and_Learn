class LearningResources
  attr_reader :country, :video, :title, :images

  def initialize(country, video, images)
    @country = country 
    @video = video[0]
    @images= images

  end
end