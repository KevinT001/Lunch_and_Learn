class AirQuality 
  attr_reader :aqi, :datetime, :readable_aqi
  def initialize(attributes)
  
    @aqi = attributes[:main][:aqi]
    @datetime = attributes[:dt]
    @readable_aqi = quality_guide
    binding.pry
  end

  def quality_guide
    if @aqi == "1"
      puts "Good"
    elsif @aqi == "2" 
      puts "Fair"
    elsif @aqi === "3"
      puts "Moderate"
    elsif @aqi == "4"
      puts "Poor"
    else 
      puts "Very Poor"
    end
  end
end