get '/' do
  erb :index
end

get '/game' do
  @user1 = User.first
  @user2 = User.last
  erb :gameboard
end

post '/game' do
  # Input calls to game logic here with params
  # Just test param input for now.

  @params = params
  @current_game = RockPaperScissors.new(params)
  @winner,@loser = @current_game.determine_winner

  erb :results
end

