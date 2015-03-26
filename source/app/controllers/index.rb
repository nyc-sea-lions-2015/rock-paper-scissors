require 'sinatra'

get '/' do
  erb :index
end

get '/gameboard' do
  erb :'gameboard'
end

get '/outcome' do
  erb :'outcome'
end
