#!/usr/bin/env ruby
require 'pp'
require 'sinatra'
require "sinatra/base"
require 'optparse'


class App < Sinatra::Base

  get '/' do
    erb :home
  end

end



# todo: refactor this and use rackup
if __FILE__ == $PROGRAM_NAME
  $options = {}
  parser = OptionParser.new do |opt|
    opt.on("-x", "--execute") do |arg|
      $options[:execute_command] = true
    end

    opt.on_tail("-h", "--help") do |arg|
      puts opt
      exit
    end
  end
  parser.parse!(ARGV)
  App.run!
end