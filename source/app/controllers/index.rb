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
  elsif
    winner = curr_game.user2
    loser = curr_game.user1
    win_token = curr_game.user_throw2
    lose_token = curr_game.user_throw1
  else
    redirect '/game'
  end
  # At this point, I have winner through user ID.
  "Winner: #{winner} with #{win_token} |  Loser: #{loser} with #{lose_token}"
  game = Game.create(winner_id: winner, loser_id: loser, win_token_id: win_token, lose_token_id: lose_token)
  redirect "/game/#{game.id}"
end

get '/game/:id' do
  "Hello"
  currgame = Game.find_by(id: params[:id])
  @winner = currgame.winner_id
  @loser = currgame.loser_id
  @win_token = currgame.win_token_id
  @lose_token  = currgame.lose_token_id
  erb :endgame
end

