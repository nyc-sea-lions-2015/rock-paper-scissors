get '/' do
  redirect '/throw_1'
end

get '/throw_1' do
  erb :throw_1
end

post '/record_throw_1' do
  redirect "/throw_2/#{params[:player_id]}/#{params[:token_id]}"
end

get '/throw_2/:player_id/:token_id' do
  @north_player = User.find(params[:player_id])
  @north_token = Token.find(params[:token_id])
  erb :throw_2
end

