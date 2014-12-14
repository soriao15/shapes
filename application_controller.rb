require 'bundler'
Bundler.require
require_relative './models/triangle.rb'

class MyApp < Sinatra::Base

  get '/home' do
  	erb :index
  
  end
end