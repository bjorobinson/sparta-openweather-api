require 'json'
require 'HTTParty'

class CoordService
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?q='

  def get_response
    JSON.parse(self.class.get("London,uk&appid=12fd562a95d4d19d40cb9a77a1a5cfa7").body)
  end

  def get_latitude
    # @openweather_api_london['coord']['lat']
    response = get_response['coord']['lat']

    p response
  end
end
