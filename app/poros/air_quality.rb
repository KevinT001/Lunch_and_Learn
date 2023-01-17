class AirQuality 
  attr_reader :aqi, :datetime, :readable_aqi
  def initialize(attributes)
  
    @aqi = attributes[:main][:aqi]
    @datetime = attributes[:dt]
    @readable_aqi = quality_guide
 
  end

  def quality_guide
   
    if @aqi == 1
       "Good"
    elsif @aqi == 2 
       "Fair"
    elsif @aqi === 3
       "Moderate"
    elsif @aqi == 4
       "Poor"
    else 
       "Very Poor"
    end
  end
end