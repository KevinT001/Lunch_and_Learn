class PhotoFacade 

  def self.photo_results(country)
    photos = PhotoService.retrieve_photos(country)
    photos[:results].map do |info|
      Photo.new(info)
    end
  end
end