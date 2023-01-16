class Recipe 
  attr_reader :id, :title, :url, :country, :image 

  def initialize(attributes, searched_country)
    @id = nil 
    @title = attributes[:recipe][:label]
    @url = attributes[:recipe][:url]
    @country = searched_country
    @image = attributes[:recipe][:image]
  end
end