get '/' do
  erb :index
end

get '/game' do
  @tokens = Token.all
  erb :game
end

post '/game' do
  if params[:player_1_token] == params[:player_2_token]
    redirect '/game'
  end
  args = {
  player_1: User.find_by(name: params[:player_1_name]),
  player_2: User.find_by(name: params[:player_2_name]),
  player_1_token: params[:player_1_token],
  player_2_token: params[:player_2_token]
  }
  puts "This is ARGS: #{args}"
  cur_gameplay = Gameplay.new(args)
  results = cur_gameplay.find_winner
  puts "This is RESULTS: #{results}"
  @game = Game.new(winner: User.find_by(name: results[:winner]),
                  loser: User.find_by(name: results[:loser]),
                  winner_token: Token.find_by(name: results[:winner_token]),
                  loser_token: Token.find_by(name: results[:loser_token]))
  if @game.save
    redirect "/games/#{@game.id}"
  else
    redirect '/'
  end
end

get '/game/:id' do
  @game = Game.find_by(id: params[:id])
  winner_id = @game.winner
  @winner = User.find_by(id: winner_id)
  @winner_wins = Game.find_by(winner: winner_id).length
  @winner_losses = Game.find_by(loser: winner_id).length
  @winner_token = Token.find_by(id: @game.winner_token).name

  loser_id = @game.loser
  @loser = User.find_by(id: loser_id)
  @loser_wins = Game.find_by(winner: loser_id).length
  @loser_losses = Game.find_by(loser: loser_id).length
  @loser_token = Token.find_by(id: @game.loser_token).name

  erb :show
end
