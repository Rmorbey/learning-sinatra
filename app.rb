require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello!"
end

get '/secret' do
  "This is a secret."
end

get '/response' do
  "Haha, this is jokes."
end

get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end