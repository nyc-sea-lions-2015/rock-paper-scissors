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
  # curr_game = Logic.new(params[:user1],params[:user2],params[:token1],params[:token2])
  # winner = curr_game.run
  # if winner == params[:user1]
  #   loser = params[:user2]
  #   # win_token = params[:token1]
  #   # lose_token = params[:token2]
  # else
  #   winner = params[:user2]
  #   loser = params[:user1]
  #   # win_token = params[:token2]
  #   # lose_token = params[:token1]
  # end
  # game = Game.new(winner: winner, loser: loser, win_token_id: win_token, lose_token_id: lose_token)
  # redirect '/game/#{game.id}'
end

get '/game/:id' do
  curr_game = Game.find_by(id: params[:id])
  @winner = currgame.winner
  @loser = currgame.loser
  @win_token = currgame.win_token
  @lose_token  = currgame.lose_token
  erb :endgame
end

