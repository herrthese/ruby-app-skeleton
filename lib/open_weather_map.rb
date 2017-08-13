#!/usr/bin/env ruby
require 'json'
require 'open-uri'

class OpenWeatherMap

  HAMBURG = 'http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1'

  def current_weather
    JSON.parse(open(HAMBURG).read)
  end
end
