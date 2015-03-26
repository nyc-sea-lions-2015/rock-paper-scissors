get '/' do
  erb :index
end

get '/game' do
  @user1 = User.first
  @user2 = User.last
  erb :gameboard
end

post '/game' do
  curr_game = Logic.new(params[:user1],params[:user2],params[:win_token],params[:lose_token])
  winner = curr_game.run
  if winner == params[:user1]
    loser = params[:user2]
    win_token = params[:win_token]
    lose_token = params[:lose_token]
  else
    winner = params[:user2]
    loser = params[:user1]
    lose_token = params[:lose_token]
    win_token = params[:win_token]
  end
  game = Game.new(winner: winner, loser: loser, win_token: win_token, lose_token: lose_token)
  redirect '/game/#{game.id}'
end

get '/game/:id' do
  curr_game = Game.find_by(id: params[:id])
  @winner = currgame.winner
  @loser = currgame.loser
  @win_token = currgame.win_token
  @lose_token  = currgame.lose_token
  erb :endgame
end

