class Country
  attr_reader :name, :lattitude, :longitude 

  def initialize(attributes)

    @name = attributes[:name][:common]
    @lattitude = attributes[:latlng][0]
    @longitude = attributes[:latlng][1]
  end
end