require 'sinatra'

get '/' do
  erb :index
end

get '/gameboard' do
  erb :'gameboard'
end
