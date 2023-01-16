class VideoService 

  def self.conn 
    Faraday.new(url: 'https://youtube.googleapis.com') do |f|
      f.params['key'] = ENV['youtube_key']
    end
  end

  def self.retrieve_video(country)
    response = conn.get("/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&maxResults=1&q=#{country}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end