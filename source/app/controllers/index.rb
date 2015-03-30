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
  new_game = Game.create
  new_game.throws.create([params[:north_throw], params[:south_throw]])
  new_game.save
  if (result = process_game(new_game.throws.to_a)).nil?
    'tie'
  else
    winner, loser = *result
    new_game.update(winning_throw_id: winner.id, losing_throw_id: loser.id)
    winner.user.name + " wins"
  end
end

get '/stats' do
  @games = Game.all.to_a
  erb :games
end

private
  def process_game(game)
    GameBrain.new(game).calculate_winner
  end
