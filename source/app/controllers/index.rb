get '/' do
  redirect '/throw_1'
end

get '/throw_1' do
  erb :throw_1
end
