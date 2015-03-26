get '/' do
  erb :index
end

get '/game' do
  @user1 = User.first
  @user2 = User.last
  erb :gameboard
end

post '/game' do
  curr_game = Logic.new(params[:user1],params[:user2],params[:token1],params[:token2])
  @game = Game.new(params)
  @winner = curr_game.run
  redirect '/game/#{game.id}'
end

get '/game/:id' do
  erb :endgame
end

