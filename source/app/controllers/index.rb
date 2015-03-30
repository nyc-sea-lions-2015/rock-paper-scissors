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

post '/record_throw_2' do
  p params
  game = Game.new north_player_id: params[:north_player_id],
    south_player_id: params[:south_player_id],
    north_token_id: params[:north_token_id],
    south_token_id: params[:south_token_id]
  process_game(game, params)
end

get '/stats' do
  @games = Game.all.to_a
  erb :games
end

private
  def process_game(game, params)
    GameBrain.new(game,
                  Token.find(params[:north_token_id]),
                  Token.find(params[:south_token_id])).calculate_winner!
  end
