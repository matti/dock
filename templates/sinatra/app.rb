require 'sinatra'

if development?
  require 'sinatra/reloader'
  require 'byebug'
end

get '/' do
  'rock on! Also try <a href="/byebug">byebug</a>!'
end

get '/byebug' do
  byebug

  "great!"
end
