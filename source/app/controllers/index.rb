get '/' do
  redirect '/throw_1'
end

get '/js' do
  @users = User.all
  erb :js
end

get '/throw_1' do
  @users = User.all.to_a
  @tokens = Token.all.to_a
  erb :throw_1
end

post '/record_throw_1' do
  session[:first_player_id] = params[:player_id]
  session[:first_token_id] = params[:token_id]
  redirect '/throw_2'
end

get '/throw_2' do
  redirect '/throw_1' unless session[:first_player_id]
  @users = User.where.not(id: User.find(session[:first_player_id]))
  erb :throw_2
end

post '/record_throw_2' do
  new_game = game_from_params
  session[:new_game_id] = new_game.id
  redirect '/stats'
end

post '/record.json' do
  content_type :json
  new_game = Game.create
  new_game.throws.create([{user_id: params[:player_id], token_id: params[:token_id]}, second_player_params])
  new_game.save
  winner, loser = GameBrain.new(new_game.throws).winner_and_loser
  body = if winner.nil?
           { message: "There was a tie" }.to_json
         else
           new_game.update(winning_throw: winner, losing_throw: loser)
           session[:new_game_id] = new_game.id
           new_game.to_json
         end
end

get '/stats' do
  new_game = Game.find(session[:new_game_id]) || Game.last
  winner, loser = GameBrain.new(new_game.throws).winner_and_loser
  @message = if winner.nil?
    'There was a tie'
  else
    new_game.update(winning_throw: winner, losing_throw: loser)
    winner.user.name + " wins"
  end
  @games = Game.all.to_a
  erb :games_with_message
end

get '/games_history' do
  @games = Game.all.to_a
  erb :_games, layout: false
end

private

  def game_from_params
    new_game = Game.create
    new_game.throws.create([first_player_params, second_player_params])
    new_game.save
    new_game
  end

  def first_player_params
    { user_id: session[:first_player_id], token_id: session[:first_token_id] }
  end

  def second_player_params
    params[:second_player]
  end

