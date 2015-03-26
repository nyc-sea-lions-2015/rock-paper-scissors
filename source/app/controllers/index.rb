get '/' do
  erb :index
end

get '/game' do
  erb :game
end

post '/game' do
  redirect '/game' if params[:player_1_token] == params[:player_2_token]
  cur_gameplay = Gameplay.new(params)
  @game = Game.new(params)
  if @game.save
    redirect "/games/#{@game.id}"
  else
    redirect '/'
  end
end

get '/game/:id' do
  @game = Game.find_by(id: params[:id])
  player_1_id = @game.winner
  @player_1 = User.find_by(id: player_1_id)
  @player_1_wins = Game.find_by(winner: player_1_id).length
  @player_1_losses = Game.find_by(loser: player_1_id).length
  @winner_token = Token.find_by(id: @game.winner_token).name

  player_2_id = @game.loser
  @player_2 = User.find_by(id: player_2_id)
  @player_2_wins = Game.find_by(winner: player_2_id).length
  @player_2_losses = Game.find_by(loser: player_2_id).length
  @loser_token = Token.find_by(id: @game.loser_token).name

  erb :show
end
