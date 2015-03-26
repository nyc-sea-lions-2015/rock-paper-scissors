get '/' do
  erb :index
end

get '/game' do
  @user1 = User.first
  @user2 = User.last
  # TODO: Create seeds for Game
  @users = User.all
  @tokens = Token.all

  erb :gameboard
end

post '/game' do
  curr_game = Logic.new(params[:user1],params[:user2],params[:token1],params[:token2])
  winner = curr_game.run
  if winner == curr_game.user1
    loser = curr_game.user2
    win_token = curr_game.user_throw1
    lose_token = curr_game.user_throw2
  else
    winner = curr_game.user2
    loser = curr_game.user1
    win_token = curr_game.user_throw2
    lose_token = curr_game.user_throw1
  end
  "#{winner}, #{win_token}"
  # game = Game.new(winner: winner, loser: loser, win_token_id: win_token, lose_token_id: lose_token)
  # redirect '/game/#{game.id}'
end

get '/game/:id' do
  currgame = Game.find_by(id: params[:id])
  @winner = currgame.winner
  @loser = currgame.loser
  @win_token = currgame.win_token
  @lose_token  = currgame.lose_token
  erb :endgame
end

