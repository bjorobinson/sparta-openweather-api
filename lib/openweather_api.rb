require_relative 'services/coord_service'

class Openweather_API

  def coord_service
    CoordService.new
  end

  # attr_reader :openweather_api_london
  #
  # def initialize
  #   @openweather_api_london = JSON.parse(HTTParty::get('http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=660fc4ff59cdcee84eb0321163d68677').body)
  # end

end
