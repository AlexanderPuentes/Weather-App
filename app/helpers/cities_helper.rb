module CitiesHelper
  require 'HTTParty'
  def get_weather(city)
    response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city}&units=imperial&appid=#{ENV['OPENWEATHER_KEY']}")
    return response.parsed_response
  end
end
