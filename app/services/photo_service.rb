class PhotoService 

  def self.conn 
    Faraday.new(url: "https://api.unsplash.com" ) do |f|
      f.params['client_id'] = ENV['unsplash_key']
      # f.params['Secret Key'] = ENV['unsplash_secret_key']
    end
  end

  def self.retrieve_photos(country)
    response = conn.get("/search/photos?&query=#{country}") #default return of 10 results : via docs
    parsed = JSON.parse(response.body, symbolize_names: true)
  end


end     