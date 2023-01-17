class Photo 
  attr_reader :alt_tag, :url

  def initialize(attributtes)
    @alt_tag = attributes[:alt_description]
    @url = attributes[:urls][:raw]
  end
end