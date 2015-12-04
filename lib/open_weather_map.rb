#!/usr/bin/env ruby
require 'json'
require 'open-uri'

class OpenWeatherMap

  HAMBURG = 'http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=2de143494c0b295cca9337e1e96b00e0'

  def current_weather
    JSON.parse(open(HAMBURG).read)
  end
end
