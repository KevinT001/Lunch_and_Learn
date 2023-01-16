class YoutubeService 

  def self.conn 
    Faraday.new('https://youtube.googleapis.com/youtube/v3/search') do |f|
      f.params['key'] = ENV[:youtube_key]
    end
  end

  def retrieve_video(country)
    response = conn.get()
  end
end