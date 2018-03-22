require 'json'
require 'HTTParty'

class MainService
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/weather?q='

  def get_response
    JSON.parse(self.class.get("London,uk&appid=12fd562a95d4d19d40cb9a77a1a5cfa7").body)['main']
  end

  def get_temp
    get_response['temp']
  end

  def get_temp_min
    get_response['temp_min']
  end

  def get_temp_max
    get_response['temp_max']
  end

end
