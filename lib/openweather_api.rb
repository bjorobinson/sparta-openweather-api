require_relative 'services/coord_service'
require_relative 'services/weather_service'

class Openweather_API

  def coord_service
    CoordService.new
  end

  def weather_service
    WeatherService.new
  end

end
