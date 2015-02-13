#!/usr/bin/env ruby
require 'json'
require 'open-uri'

class OpenWeatherMap

  def current_weather(city)
    JSON.parse(open(city).read)
  end
end