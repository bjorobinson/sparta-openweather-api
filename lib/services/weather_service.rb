require 'json'
require 'HTTParty'

class WeatherService
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?q='

  def get_response
    JSON.parse(self.class.get("London,uk&appid=12fd562a95d4d19d40cb9a77a1a5cfa7").body)['weather'][0]
  end

  def get_id
    get_response['id']
  end

  def get_main
    get_response['main']
  end

  def get_description
    get_response['description']
  end

end
